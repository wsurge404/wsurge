import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/system_tray/notifier/system_tray_notifier.dart';
import 'package:wsurge/core/window/notifier/window_notifier.dart';

class TrayWrapper extends StatefulHookConsumerWidget {
  const TrayWrapper(this.child, {super.key});

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TrayWrapperState();
}

class _TrayWrapperState extends ConsumerState<TrayWrapper>
    with TrayListener, AppLogger {
  @override
  Widget build(BuildContext context) {
    ref.listen(systemTrayNotifierProvider, (_, __) {});

    return widget.child;
  }

  @override
  void initState() {
    super.initState();
    trayManager.addListener(this);
  }

  @override
  void dispose() {
    trayManager.removeListener(this);
    super.dispose();
  }

  @override
  Future<void> onTrayIconMouseDown() async {
    if (Platform.isMacOS) {
      await trayManager.popUpContextMenu();
    } else {
      await ref.read(windowNotifierProvider.notifier).open();
    }
  }

  @override
  Future<void> onTrayIconRightMouseDown() async {
    await trayManager.popUpContextMenu();
  }
}
