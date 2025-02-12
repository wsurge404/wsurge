import 'dart:io';
import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:wsurge/common/constants.dart';
import 'package:wsurge/core/config/data/config_option_repository.dart';
import 'package:wsurge/core/connection/model/connection_status.dart';
import 'package:wsurge/core/connection/notifier/connection_notifier.dart';
import 'package:wsurge/core/localization/translations.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/window/notifier/window_notifier.dart';
import 'package:wsurge/singbox/model/singbox_config_enum.dart';
import 'package:wsurge/utils/platform_utils.dart';
import 'package:wsurge/gen/assets.gen.dart';

part 'system_tray_notifier.g.dart';

@Riverpod(keepAlive: true)
class SystemTrayNotifier extends _$SystemTrayNotifier with AppLogger {
  @override
  Future<void> build() async {
    if (!PlatformUtils.isDesktop) return;

    // final activeProxy = await ref.watch(activeProxyNotifierProvider);
    // final delay = activeProxy.value?.urlTestDelay ?? 0;
    // final newConnectionStatus = delay > 0 && delay < 65000;
    ConnectionStatus connection;
    try {
      connection = await ref.watch(connectionNotifierProvider.future);
    } catch (e) {
      loggy.warning("error getting connection status", e);
      connection = const ConnectionStatus.disconnected();
    }

    final t = ref.watch(translationsProvider);

    var tooltip = Constants.appName;
    final serviceMode = ref.watch(ConfigOptions.serviceMode);
    if (connection == Disconnected()) {
      setIcon(connection);
    }
    // else if (newConnectionStatus) {
    //   setIcon(const Connected());
    //   tooltip = "$tooltip - ${connection.present(t)}";
    //   if (newConnectionStatus) {
    //     tooltip = "$tooltip : ${delay}ms";
    //   } else {
    //     tooltip = "$tooltip : -";
    //   }
    //   // else if (delay>1000)
    //   //   SystemTrayNotifier.setIcon(timeout ? Disconnecting() : Connecting());
    // }
    else {
      setIcon(const Disconnecting());
      tooltip = "$tooltip - ${connection.present(t)}";
    }
    // if (Platform.isMacOS) {
    //   windowManager.setBadgeLabel("${delay}ms");
    // }
    if (!Platform.isLinux) await trayManager.setToolTip(tooltip);

    final menu = Menu(
      items: [
        MenuItem(
          label: t.tray.dashboard,
          onClick: (_) async {
            await ref.read(windowNotifierProvider.notifier).open();
          },
        ),
        MenuItem.separator(),
        MenuItem.checkbox(
          label: switch (connection) {
            Disconnected() => t.tray.status.connect,
            Connecting() => t.tray.status.connecting,
            Connected() => t.tray.status.disconnect,
            Disconnecting() => t.tray.status.disconnecting,
          },
          // checked: connection.isConnected,
          checked: false,
          disabled: connection.isSwitching,
          onClick: (_) async {
            await ref
                .read(connectionNotifierProvider.notifier)
                .toggleConnection();
          },
        ),
        MenuItem.separator(),
        MenuItem(
          label: t.config.serviceMode,
          icon: Assets.images.trayIconIco,
          disabled: true,
        ),

        ...ServiceMode.values.map(
          (e) => MenuItem.checkbox(
            checked: e == serviceMode,
            key: e.name,
            label: e.present(t),
            onClick: (menuItem) async {
              final newMode = ServiceMode.values.byName(menuItem.key!);
              loggy.debug("switching service mode: [$newMode]");
              await ref
                  .read(ConfigOptions.serviceMode.notifier)
                  .update(newMode);
            },
          ),
        ),

        // MenuItem.submenu(
        //   label: t.tray.open,
        //   submenu: Menu(
        //     items: [
        //       ...destinations.map(
        //         (e) => MenuItem(
        //           label: e.$1,
        //           onClick: (_) async {
        //             await ref.read(windowNotifierProvider.notifier).open();
        //             ref.read(routerProvider).go(e.$2);
        //           },
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        MenuItem.separator(),
        MenuItem(
          label: t.tray.quit,
          onClick: (_) async {
            return ref.read(windowNotifierProvider.notifier).quit();
          },
        ),
      ],
    );

    await trayManager.setContextMenu(menu);
  }

  static void setIcon(ConnectionStatus status) {
    if (!PlatformUtils.isDesktop) return;
    trayManager
        .setIcon(
          _trayIconPath(status),
          isTemplate: Platform.isMacOS,
        )
        .asStream();
  }

  static String _trayIconPath(ConnectionStatus status) {
    if (Platform.isWindows) {
      final Brightness brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;
      final isDarkMode = brightness == Brightness.dark;
      switch (status) {
        case Connected():
          return Assets.images.trayIconConnected;
        case Connecting():
          return Assets.images.trayIconDisconnected;
        case Disconnecting():
          return Assets.images.trayIconDisconnected;
        case Disconnected():
          if (isDarkMode) {
            return Assets.images.trayIconIco;
          } else {
            return Assets.images.trayIconDark;
          }
      }
    }
    final isDarkMode = false;
    switch (status) {
      case Connected():
        return Assets.images.trayIconConnected;
      case Connecting():
        return Assets.images.trayIconDisconnected;
      case Disconnecting():
        return Assets.images.trayIconDisconnected;
      case Disconnected():
        if (isDarkMode) {
          return Assets.images.trayIconDark;
        } else {
          return Assets.images.trayIconIco;
        }
    }
    // return Assets.images.trayIconPng.path;
  }
}
