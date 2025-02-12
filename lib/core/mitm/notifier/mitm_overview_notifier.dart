import 'dart:io';

import 'package:dartx/dartx.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/directories/directories_provider.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/mitm/data/mitm_config_source.dart';
import 'package:wsurge/core/mitm/data/mitm_host_source.dart';
import 'package:wsurge/core/mitm/data/mitm_providers.dart';
import 'package:wsurge/core/mitm/data/mitm_rule_source.dart';
import 'package:wsurge/singbox/model/singbox_config_option.dart';
import 'package:wsurge/singbox/singbox_service_provider.dart';

part 'mitm_overview_notifier.g.dart';

@Riverpod(keepAlive: true)
class MitmOverviewNotifier extends _$MitmOverviewNotifier with AppLogger {

  MitmConfigSource get _configDao =>
      ref.read(mitmConfigDaoProvider).requireValue;

  MitmRuleSource get _ruleDao => ref.read(mitmRuleDaoProvider).requireValue;

  MitmHostSource get _hostDao => ref.read(mitmHostDaoProvider).requireValue;
  @override
  Future<MitmOption> build() async {
    return getAsync();
  }

  Future<void> generateCa() async {
    String? workDirPath =
        ref.watch(appDirectoriesProvider).value?.workingDir.path;
    await ref.watch(singboxServiceProvider).generateCa(workDirPath!).run();
  }

  Future<MitmOption> getAsync()async{
    var dirs = ref.watch(appDirectoriesProvider).value;
    bool enable = false;
    String certFile = "";
    String keyFile = "";
    List<String> hosts = [];
    List<MitmRuleOption> rules = [];
    var config = await _configDao.getAsync();
    if (config != null) {
      enable = config.enable;
      certFile = config.certFile ?? "${dirs?.workingDir.path}${Platform.pathSeparator}wsurge-ca-cert.cer";
      keyFile = config.keyFile ?? "${dirs?.workingDir.path}${Platform.pathSeparator}wsurge-ca.pem";
    }
    var hs = await _hostDao.getSync();
    if (hs.length > 0) {
      hosts = hs.filter((it) => it.enable).map((it) => it.hostname).toList();
    }
    var rs = await _ruleDao.getAllSync();
    if (rs.length > 0) {
      rules = rs.filter((it) => it.enable).map((it) {
        return MitmRuleOption(
          urlRegex: it.urlRegex!,
          ruleType: it.type.name,
          scriptsPath: it.scriptsPath ?? "",
          replaceContent: it.replaceContent??"",
        );
      }).toList();
    }
    return MitmOption(
        enable: enable,
        certFile: certFile,
        keyFile: keyFile,
        hosts: hosts,
        rules: rules);
  }


  Future<void> changeOptions() async {
    var option = await getAsync();
    await ref.watch(singboxServiceProvider).changeMitmOptions(option).run();
  }
}
