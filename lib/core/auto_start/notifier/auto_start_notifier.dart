import 'dart:io';

import 'package:launch_at_startup/launch_at_startup.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/app_info/app_info_provider.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/utils/platform_utils.dart';

part 'auto_start_notifier.g.dart';

@Riverpod(keepAlive: true)
class AutoStartNotifier extends _$AutoStartNotifier with InfraLogger {
  @override
  Future<bool> build() async {
    if (!PlatformUtils.isDesktop) return false;

    final appInfo = ref.watch(appInfoProvider).requireValue;
    loggy.info("1");
    launchAtStartup.setup(
      appName: appInfo.name,
      appPath: Platform.resolvedExecutable,
    );
    loggy.info("1");
    final isEnabled = await launchAtStartup.isEnabled();
    loggy.info("auto start is [${isEnabled ? "Enabled" : "Disabled"}]");
    return isEnabled;
  }

  Future<void> enable() async {
    loggy.debug("enabling auto start");
    await launchAtStartup.enable();
    state = const AsyncValue.data(true);
  }

  Future<void> disable() async {
    loggy.debug("disabling auto start");
    await launchAtStartup.disable();
    state = const AsyncValue.data(false);
  }
}
