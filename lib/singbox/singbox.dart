import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';
import 'package:combine/combine.dart';
import 'package:ffi/ffi.dart';
import 'package:fpdart/fpdart.dart';
import 'package:loggy/loggy.dart';
import 'package:path/path.dart' as p;
import 'package:rxdart/rxdart.dart';
import 'package:watcher/watcher.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/gen/singbox_generated_bindings.dart';
import 'package:wsurge/pages/requests/model/request_entity.dart';
import 'package:wsurge/singbox/model/directories.dart';
import 'package:wsurge/singbox/model/singbox_config_option.dart';
import 'package:wsurge/singbox/model/singbox_outbound.dart';
import 'package:wsurge/singbox/model/singbox_stats.dart';
import 'package:wsurge/singbox/model/singbox_status.dart';

final _logger = Loggy('FFISingboxService');

class SingboxService with InfraLogger {
  static final SingboxNativeLibrary _box = _gen();

  late final ValueStream<SingboxStatus> _status;
  late final ReceivePort _statusReceiver;
  late final ReceivePort _requestReceiver;
  Stream<SingboxStats>? _serviceStatsStream;
  Stream<List<SingboxOutboundGroup>>? _outboundsStream;
  Stream<RequestEntity>? _requestStream;

  static SingboxNativeLibrary _gen() {
    String fullPath = "";
    if (Platform.environment.containsKey('FLUTTER_TEST')) {
      fullPath = ".\\wsurge-core\\bin\\libcore.dll";
    } else if (Platform.isWindows) {
      fullPath = p.join(fullPath, "libcore.dll");
    } else if (Platform.isMacOS) {
      fullPath = p.join(fullPath, "libcore.dylib");
    } else {
      fullPath = p.join(fullPath, "libcore.so");
    }
    _logger.debug('singbox native libs path: "$fullPath"');
    final lib = DynamicLibrary.open(fullPath);
    return SingboxNativeLibrary(lib);
  }

  Future<void> init() async {
    loggy.debug("initializing");
    _box.setupOnce(NativeApi.initializeApiDLData);

    _statusReceiver = ReceivePort('service status receiver');
    _requestReceiver = ReceivePort('request receiver');
    // initRequest();
    final source = _statusReceiver
        .asBroadcastStream()
        .map((event) => jsonDecode(event as String))
        .map(SingboxStatus.fromEvent);
    _status = ValueConnectableStream.seeded(
      source,
      const SingboxStopped(),
    ).autoConnect();

  }

  TaskEither<String, Unit> setup(
    Directories directories,
    bool debug,
  ) {
    final port = _statusReceiver.sendPort.nativePort;
    return TaskEither(
      () => CombineWorker().execute(
        () {
          final err = _box
              .setup(
                directories.baseDir.path.toNativeUtf8().cast(),
                directories.workingDir.path.toNativeUtf8().cast(),
                directories.tempDir.path.toNativeUtf8().cast(),
                port,
                debug ? 1 : 0,
              )
              .cast<Utf8>()
              .toDartString();
          if (err.isNotEmpty) {
            return left(err);
          }
          return right(unit);
        },
      ),
    );
  }

  TaskEither<String, Unit> validateConfigByPath(
    String path,
    String tempPath,
    bool debug,
  ) {
    return TaskEither(
      () => CombineWorker().execute(
        () {
          final err = _box
              .parse(
                path.toNativeUtf8().cast(),
                tempPath.toNativeUtf8().cast(),
                debug ? 1 : 0,
              )
              .cast<Utf8>()
              .toDartString();
          if (err.isNotEmpty) {
            return left(err);
          }
          return right(unit);
        },
      ),
    );
  }

  
  TaskEither<String, Unit> changeOptions(SingboxConfigOption options) {
    return TaskEither(
      () => CombineWorker().execute(
        () {
          final json = jsonEncode(options.toJson());
          final err = _box
              .changeOptions(json.toNativeUtf8().cast())
              .cast<Utf8>()
              .toDartString();
          if (err.isNotEmpty) {
            return left(err);
          }
          return right(unit);
        },
      ),
    );
  }

  
  TaskEither<String, String> generateFullConfigByPath(
    String path,
  ) {
    return TaskEither(
      () => CombineWorker().execute(
        () {
          final response = _box
              .generateConfig(
                path.toNativeUtf8().cast(),
              )
              .cast<Utf8>()
              .toDartString();
          if (response.startsWith("error")) {
            return left(response.replaceFirst("error", ""));
          }
          return right(response);
        },
      ),
    );
  }

  
  TaskEither<String, Unit> start(
    String configPath,
    String name,
    bool disableMemoryLimit,
  ) {
    loggy.debug("starting, memory limit: [${!disableMemoryLimit}]");
    return TaskEither(
      () => CombineWorker().execute(
        () {
          final err = _box
              .start(
                configPath.toNativeUtf8().cast(),
                disableMemoryLimit ? 1 : 0,
              )
              .cast<Utf8>()
              .toDartString();
          if (err.isNotEmpty) {
            return left(err);
          }
          return right(unit);
        },
      ),
    );
  }

  
  TaskEither<String, Unit> stop() {
    return TaskEither(
      () => CombineWorker().execute(
        () {
          final err = _box.stop().cast<Utf8>().toDartString();
          if (err.isNotEmpty) {
            return left(err);
          }
          return right(unit);
        },
      ),
    );
  }

  
  TaskEither<String, Unit> restart(
    String configPath,
    String name,
    bool disableMemoryLimit,
  ) {
    loggy.debug("restarting, memory limit: [${!disableMemoryLimit}]");
    return TaskEither(
      () => CombineWorker().execute(
        () {
          final err = _box
              .restart(
                configPath.toNativeUtf8().cast(),
                disableMemoryLimit ? 1 : 0,
              )
              .cast<Utf8>()
              .toDartString();
          if (err.isNotEmpty) {
            return left(err);
          }
          return right(unit);
        },
      ),
    );
  }

  
  TaskEither<String, Unit> resetTunnel() {
    throw UnimplementedError(
      "reset tunnel function unavailable on platform",
    );
  }

  
  Stream<SingboxStatus> watchStatus() => _status;

  
  Stream<SingboxStats> watchStats() {
    if (_serviceStatsStream != null) return _serviceStatsStream!;
    final receiver = ReceivePort('stats');
    final statusStream = receiver.asBroadcastStream(
      onCancel: (_) {
        _logger.debug("stopping stats command client");
        final err = _box.stopCommandClient(1).cast<Utf8>().toDartString();
        if (err.isNotEmpty) {
          _logger.error("error stopping stats client");
        }
        receiver.close();
        _serviceStatsStream = null;
      },
    ).map(
      (event) {
        if (event case String _) {
          if (event.startsWith('error:')) {
            loggy.error("[service stats client] error received: $event");
            throw event.replaceFirst('error:', "");
          }
          return SingboxStats.fromJson(
            jsonDecode(event) as Map<String, dynamic>,
          );
        }
        loggy.error("[service status client] unexpected type, msg: $event");
        throw "invalid type";
      },
    );

    final err = _box
        .startCommandClient(1, receiver.sendPort.nativePort)
        .cast<Utf8>()
        .toDartString();
    if (err.isNotEmpty) {
      loggy.error("error starting status command: $err");
      throw err;
    }

    return _serviceStatsStream = statusStream;
  }

  
  Stream<List<SingboxOutboundGroup>> watchGroups() {
    final logger = newLoggy("watchGroups");
    if (_outboundsStream != null) return _outboundsStream!;
    final receiver = ReceivePort('groups');
    final outboundsStream = receiver.asBroadcastStream(
      onCancel: (_) {
        logger.debug("stopping");
        receiver.close();
        _outboundsStream = null;
        final err = _box.stopCommandClient(5).cast<Utf8>().toDartString();
        if (err.isNotEmpty) {
          _logger.error("error stopping group client");
        }
      },
    ).map(
      (event) {
        if (event case String _) {
          if (event.startsWith('error:')) {
            logger.error("error received: $event");
            throw event.replaceFirst('error:', "");
          }

          return (jsonDecode(event) as List).map((e) {
            return SingboxOutboundGroup.fromJson(e as Map<String, dynamic>);
          }).toList();
        }
        logger.error("unexpected type, msg: $event");
        throw "invalid type";
      },
    );

    try {
      final err = _box
          .startCommandClient(5, receiver.sendPort.nativePort)
          .cast<Utf8>()
          .toDartString();
      if (err.isNotEmpty) {
        logger.error("error starting group command: $err");
        throw err;
      }
    } catch (e) {
      receiver.close();
      rethrow;
    }

    return _outboundsStream = outboundsStream;
  }

  
  Stream<List<SingboxOutboundGroup>> watchActiveGroups() {
    final logger = newLoggy("[ActiveGroupsClient]");
    final receiver = ReceivePort('active groups');
    final outboundsStream = receiver.asBroadcastStream(
      onCancel: (_) {
        logger.debug("stopping");
        receiver.close();
        final err = _box.stopCommandClient(13).cast<Utf8>().toDartString();
        if (err.isNotEmpty) {
          logger.error("failed stopping: $err");
        }
      },
    ).map(
      (event) {
        if (event case String _) {
          if (event.startsWith('error:')) {
            logger.error(event);
            throw event.replaceFirst('error:', "");
          }

          return (jsonDecode(event) as List).map((e) {
            return SingboxOutboundGroup.fromJson(e as Map<String, dynamic>);
          }).toList();
        }
        logger.error("unexpected type, msg: $event");
        throw "invalid type";
      },
    );

    try {
      final err = _box
          .startCommandClient(13, receiver.sendPort.nativePort)
          .cast<Utf8>()
          .toDartString();
      if (err.isNotEmpty) {
        logger.error("error starting: $err");
        throw err;
      }
    } catch (e) {
      receiver.close();
      rethrow;
    }

    return outboundsStream;
  }

  
  TaskEither<String, Unit> selectOutbound(String groupTag, String outboundTag) {
    return TaskEither(
      () => CombineWorker().execute(
        () {
          final err = _box
              .selectOutbound(
                groupTag.toNativeUtf8().cast(),
                outboundTag.toNativeUtf8().cast(),
              )
              .cast<Utf8>()
              .toDartString();
          if (err.isNotEmpty) {
            return left(err);
          }
          return right(unit);
        },
      ),
    );
  }

  
  TaskEither<String, Unit> urlTest(String groupTag) {
    return TaskEither(
      () => CombineWorker().execute(
        () {
          final err = _box
              .urlTest(groupTag.toNativeUtf8().cast())
              .cast<Utf8>()
              .toDartString();
          if (err.isNotEmpty) {
            return left(err);
          }
          return right(unit);
        },
      ),
    );
  }

  final _logBuffer = <String>[];
  int _logFilePosition = 0;

  
  Stream<List<String>> watchLogs(String path) async* {
    yield await _readLogFile(File(path));
    yield* Watcher(path, pollingDelay: const Duration(seconds: 1))
        .events
        .asyncMap((event) async {
      if (event.type == ChangeType.MODIFY) {
        await _readLogFile(File(path));
      }
      return _logBuffer;
    });
  }

  
  TaskEither<String, Unit> clearLogs() {
    return TaskEither(
      () => CombineWorker().execute(
        () {
          _logBuffer.clear();
          return right(unit);
        },
      ),
    );
  }

  Future<List<String>> _readLogFile(File file) async {
    if (_logFilePosition == 0 && file.lengthSync() == 0) return [];
    final content =
        await file.openRead(_logFilePosition).transform(utf8.decoder).join();
    _logFilePosition = file.lengthSync();
    final lines = const LineSplitter().convert(content);
    if (lines.length > 300) {
      lines.removeRange(0, lines.length - 300);
    }
    for (final line in lines) {
      _logBuffer.add(line);
      if (_logBuffer.length > 300) {
        _logBuffer.removeAt(0);
      }
    }
    return _logBuffer;
  }

  // initRequest() {
  //   final logger = newLoggy("_requestReceiver");
  //   _requestReceiver.asBroadcastStream(
  //     onCancel: (_) {
  //       logger.debug("stopping");
  //       _requestReceiver.close();
  //       _outboundsStream = null;
  //       final err = _box.stopCommandClient(5).cast<Utf8>().toDartString();
  //       if (err.isNotEmpty) {
  //         _logger.error("error stopping group client");
  //       }
  //     },
  //   ).map(
  //     (event) {
  //       if (event case String _) {
  //         if (event.startsWith('error:')) {
  //           logger.error("error received: $event");
  //           throw event.replaceFirst('error:', "");
  //         }
  //         print(event);
  //       }
  //       logger.error("unexpected type, msg: $event");
  //       throw "invalid type";
  //     },
  //   );
  // }
  Stream<RequestEntity> watchRequests() {
    final logger = newLoggy("watchRequests");
    // if (_requestStream != null) return _requestStream!;
    final receiver = ReceivePort('groups');
    final requestStream = receiver.asBroadcastStream(
      onCancel: (_) {
        logger.debug("stopping watchRequests");
        receiver.close();
        _requestStream = null;
        final err = _box.stopRequestLog().cast<Utf8>().toDartString();
        if (err.isNotEmpty) {
          _logger.error("error stopping watchRequests client");
        }
      },
    ).map(
      (event) {
        print(event);
        if (event case String _) {
          if (event.startsWith('error:')) {
            logger.error("error received: $event");
            throw event.replaceFirst('error:', "");
          }
          return RequestEntity.fromJson(
              jsonDecode(event) as Map<String, dynamic>);
          // return (jsonDecode(event) as List).map((e) {
          //   return RequestEntity.fromJson(e as Map<String, dynamic>);
          // }).toList();
        }
        logger.error("unexpected type, msg: $event");
        throw "invalid type";
      },
    );

    try {
      final err = _box
          .startRequestLog(receiver.sendPort.nativePort)
          .cast<Utf8>()
          .toDartString();
      if (err.isNotEmpty) {
        logger.error("error starting group command: $err");
        throw err;
      }
    } catch (e) {
      receiver.close();
      rethrow;
    }

    return _requestStream = requestStream;
  }

  TaskEither<String, Unit> generateCa(String path) {
    return TaskEither(
          () => CombineWorker().execute(
            () {
          final err = _box.generateCa(path.toNativeUtf8().cast()).cast<Utf8>().toDartString();
          if (err.isNotEmpty) {
            return left(err);
          }
          return right(unit);
        },
      ),
    );
  }

  TaskEither<String, Unit> changeMitmOptions(MitmOption options) {
    return TaskEither(
          () => CombineWorker().execute(
            () {
          final json = jsonEncode(options.toJson());
          final err = _box
              .changeMitmOptions(json.toNativeUtf8().cast())
              .cast<Utf8>()
              .toDartString();
          if (err.isNotEmpty) {
            return left(err);
          }
          return right(unit);
        },
      ),
    );
  }

// Stream<List<SingboxOutboundGroup>> watcherRequest() {
//
//   // if (_requestReceiver != null) return _outboundsStream!;
//   final receiver = ReceivePort('groups');
//   final outboundsStream =
//
//   try {
//     final err = _box
//         .startCommandClient(5, receiver.sendPort.nativePort)
//         .cast<Utf8>()
//         .toDartString();
//     if (err.isNotEmpty) {
//       logger.error("error starting group command: $err");
//       throw err;
//     }
//   } catch (e) {
//     receiver.close();
//     rethrow;
//   }
//
//   return _outboundsStream = outboundsStream;
// }
}
// 
// TaskEither<String, WarpResponse> generateWarpConfig({
//   required String licenseKey,
//   required String previousAccountId,
//   required String previousAccessToken,
// }) {
//   loggy.debug("generating warp config");
//   return TaskEither(
//         () => CombineWorker().execute(
//           () {
//         final response = _box
//             .generateWarpConfig(
//           licenseKey.toNativeUtf8().cast(),
//           previousAccountId.toNativeUtf8().cast(),
//           previousAccessToken.toNativeUtf8().cast(),
//         )
//             .cast<Utf8>()
//             .toDartString();
//         if (response.startsWith("error:")) {
//           return left(response.replaceFirst('error:', ""));
//         }
//         return right(warpFromJson(jsonDecode(response)));
//       },
//     ),
//   );
// }
