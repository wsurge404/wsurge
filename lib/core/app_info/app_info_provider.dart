import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/model/app_info_entity.dart';
import 'package:wsurge/core/model/environment.dart';

part 'app_info_provider.g.dart';

@Riverpod(keepAlive: true)
Environment environment(Ref ref) =>Environment.dev;

@Riverpod(keepAlive: true)
class AppInfo extends _$AppInfo {
  @override
  Future<AppInfoEntity> build() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final environment = ref.watch(environmentProvider);
    return AppInfoEntity(
      name: packageInfo.appName,
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
      release: Release.read(),
      operatingSystem: Platform.operatingSystem,
      operatingSystemVersion: Platform.operatingSystemVersion,
      environment: environment,
    );
  }
}
