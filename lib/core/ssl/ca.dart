
import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:basic_utils/basic_utils.dart';
import 'package:loggy/loggy.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/ssl/x509/basic_constraints.dart';
import 'package:wsurge/core/ssl/x509/x509.dart';
import 'package:wsurge/core/ssl/x509/key_usage.dart' as x509;
import 'dart:typed_data';

import 'package:wsurge/core/utils/file_read.dart';

enum StartState { uninitialized, initializing, initialized }

class CertificateManager with AppLogger {

  static final Loggy  _loggy =  Loggy('SingboxService');
  /// 证书缓存
  static final Map<String, String> _certificateMap = {};

  /// 服务端密钥
  static AsymmetricKeyPair _serverKeyPair = CryptoUtils.generateRSAKeyPair();

  /// ca证书
  static late X509CertificateData _caCert;

  /// ca私钥
  static late RSAPrivateKey _caPriKey;

  /// 是否初始化
  static StartState _state = StartState.uninitialized;
  static Completer<void> _initializationCompleter = Completer<void>();

  static String? get(String host) {
    return _certificateMap[host];
  }

  static X509CertificateData get caCert => _caCert;

  /// 清除缓存
  static void cleanCache() {
    _certificateMap.clear();
  }

  /// 获取域名自签名证书
  static Future<SecurityContext> getCertificateContext(String host) async {
    var cer = _certificateMap[host];

    if (cer == null) {
      if (_state != StartState.initialized) {
        await initCAConfig();
      }
      cer = generate(_caCert, _serverKeyPair.publicKey as RSAPublicKey, _caPriKey, host);
      _certificateMap[host] = cer;
    }

    var rsaPrivateKey = _serverKeyPair.privateKey as RSAPrivateKey;

    return SecurityContext.defaultContext
      ..useCertificateChainBytes(cer.codeUnits)
      ..allowLegacyUnsafeRenegotiation = true
      ..usePrivateKeyBytes(CryptoUtils.encodeRSAPrivateKeyToPemPkcs1(rsaPrivateKey).codeUnits);
  }

  /// 生成证书
  static String generate(X509CertificateData caRoot, RSAPublicKey serverPubKey, RSAPrivateKey caPriKey, String host) {
    //根据CA证书subject来动态生成目标服务器证书的issuer和subject
    Map<String, String> x509Subject = {
      'C': 'CN',
      'ST': 'BJ',
      'L': 'Beijing',
      'O': 'Wsurge',
      'OU': 'Wsurge',
    };

    x509Subject['CN'] = host;

    var csrPem = X509Generate.generateSelfSignedCertificate(caRoot, serverPubKey, caPriKey, 365,
        sans: [host], serialNumber: Random().nextInt(1000000).toString(), subject: x509Subject);
    return csrPem;
  }

  //重新生成根证书
  static Future<void> generateNewRootCA() async {
    if (_state != StartState.initialized) {
      await initCAConfig();
    }

    var generateRSAKeyPair = CryptoUtils.generateRSAKeyPair();
    var serverPubKey = generateRSAKeyPair.publicKey as RSAPublicKey;
    var serverPriKey = generateRSAKeyPair.privateKey as RSAPrivateKey;

    //根据CA证书subject来动态生成目标服务器证书的issuer和subject
    Map<String, String> x509Subject = {
      'C': 'CN',
      'ST': 'BJ',
      'L': 'Beijing',
      'O': 'Wsurge',
      'OU': 'Wsurge',
    };
    x509Subject['CN'] = 'Wsurge CA (${Platform.localHostname})';

    var csrPem = X509Generate.generateSelfSignedCertificate(
      _caCert,
      serverPubKey,
      serverPriKey,
      825,
      sans: [x509Subject['CN']!],
      serialNumber: Random().nextInt(1000000).toString(),
      subject: x509Subject,
      keyUsage: x509.KeyUsage(x509.KeyUsage.keyCertSign | x509.KeyUsage.cRLSign),
      extKeyUsage: [ExtendedKeyUsage.SERVER_AUTH, ExtendedKeyUsage.CLIENT_AUTH],
      basicConstraints: BasicConstraints(isCA: true),
    );

    //重新写入根证书
    var caFile = await certificateFile();
    await caFile.writeAsString(csrPem);

    //私钥
    var serverPriKeyPem = CryptoUtils.encodeRSAPrivateKeyToPem(serverPriKey);
    var keyFile = await privateKeyFile();
    await keyFile.writeAsString(serverPriKeyPem);
    cleanCache();
    _state = StartState.uninitialized;
  }

  ///重置默认根证书
  static Future<void> resetDefaultRootCA() async {
    var caFile = await certificateFile();
    await caFile.delete();

    var keyFile = await privateKeyFile();
    await keyFile.delete();
    cleanCache();
    _state = StartState.uninitialized;
  }

  static Future<void> initCAConfig() async {
    if (_state == StartState.initialized || _state == StartState.initializing) {
      return _initializationCompleter.future;
    }

    var startTime = DateTime.now().millisecondsSinceEpoch;

    _state = StartState.initializing;
    _initializationCompleter = Completer<void>();

    try {
      _serverKeyPair = CryptoUtils.generateRSAKeyPair();

      //从项目目录加入ca根证书
      var caPemFile = await certificateFile();
      _caCert = X509Utils.x509CertificateFromPem(await caPemFile.readAsString());
      //根据CA证书subject来动态生成目标服务器证书的issuer和subject

      //从项目目录加入ca私钥
      var keyFile = await privateKeyFile();
      _caPriKey = CryptoUtils.rsaPrivateKeyFromPem(await keyFile.readAsString());

      _state = StartState.initialized;
      _initializationCompleter.complete();
    } catch (e) {
      _loggy.error('init ca config error:$e');
      _state = StartState.uninitialized;
      _initializationCompleter.completeError(e);
    }

    _loggy.debug('init ca config end cost:${DateTime.now().millisecondsSinceEpoch - startTime}');

    return _initializationCompleter.future;
  }

  /// 证书文件
  static Future<File> certificateFile() async {
    final String appPath = await getApplicationSupportDirectory().then((value) => value.path);
    var caFile = File("$appPath${Platform.pathSeparator}wsurge-ca-cert.cer");
    if (!(await caFile.exists())) {
      var body = await FileRead.read('assets/certs/wsurge-ca-cert.cer');
      await caFile.writeAsBytes(body.buffer.asUint8List());
    }

    return caFile;
  }

  /// 私钥文件
  static Future<File> privateKeyFile() async {
    final String appPath = await getApplicationSupportDirectory().then((value) => value.path);
    var caFile = File("$appPath${Platform.pathSeparator}wsurge-ca-cert.pem");
    if (!(await caFile.exists())) {
      var body = await FileRead.read('assets/certs/wsurge-ca-cert.pem');
      await caFile.writeAsBytes(body.buffer.asUint8List());
    }

    return caFile;
  }

  ///生成 p12文件
  static Future<Uint8List> generatePkcs12(String? password) async {
    var caFile = await CertificateManager.certificateFile();
    var keyFile = await CertificateManager.privateKeyFile();
    return Pkcs12Utils.generatePkcs12(await keyFile.readAsString(), [await caFile.readAsString()], password: password);
  }

  ///import p12文件
  static Future<void> importPkcs12(Uint8List pkcs12, String? password) async {
    var decodePkcs12 = Pkcs12Utils.parsePkcs12(pkcs12, password: password);

    var caFile = await CertificateManager.certificateFile();
    var keyFile = await CertificateManager.privateKeyFile();
    if (decodePkcs12.length != 2) {
      throw Exception('Invalid pkcs12 file');
    }

    await keyFile.writeAsString(decodePkcs12[0]);
    await caFile.writeAsString(decodePkcs12[1]);

    cleanCache();
    _state = StartState.uninitialized;
  }
}