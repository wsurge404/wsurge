import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:wsurge/core/app_info/app_info_provider.dart';
import 'package:wsurge/core/auto_start/notifier/auto_start_notifier.dart';
import 'package:wsurge/core/directories/directories_provider.dart';
import 'package:wsurge/core/localization/locale_extensions.dart';
import 'package:wsurge/core/localization/locale_preferences.dart';
import 'package:wsurge/core/logger/logger.dart';
import 'package:wsurge/core/logger/logger_controller.dart';
import 'package:wsurge/core/mitm/data/mitm_providers.dart';
import 'package:wsurge/core/mitm/notifier/mitm_overview_notifier.dart';
import 'package:wsurge/core/model/environment.dart';
import 'package:wsurge/core/preferences/general_preferences.dart';
import 'package:wsurge/core/preferences/preferences_provider.dart';
import 'package:wsurge/core/profiles/notifier/active_profile_notifier.dart';
import 'package:wsurge/core/profiles/data/profile_data_providers.dart';
import 'package:wsurge/core/system_tray/notifier/system_tray_notifier.dart';
import 'package:wsurge/core/system_tray/widget/system_tray_wrapper.dart';
import 'package:wsurge/core/window/notifier/window_notifier.dart';
import 'package:wsurge/core/window/widget/window_wrapper.dart';
import 'package:wsurge/pages/log/data/log_data_providers.dart';
import 'package:wsurge/pages/requests/data/request_providers.dart';
import 'package:wsurge/preferences/theme_preferences.dart';
import 'package:wsurge/routes/routers.dart';
import 'package:wsurge/singbox/singbox_service_provider.dart';
import 'package:wsurge/theme/theme.dart';
import 'package:wsurge/utils/platform_utils.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var r = ref.watch(routerProvider);
    final locale = ref.watch(localePreferencesProvider);
    var fonts =  locale.preferredFontFamily;
    return WindowWrapper(TrayWrapper(MaterialApp.router(
      themeMode: ref.watch(themePreferencesProvider).flutterThemeMode,
      debugShowCheckedModeBanner: false,
      // builder: FlutterSmartDialog.init(),
      theme: theme(Colors.purple, Brightness.light, false,fonts),
      darkTheme: theme(Color(0x111226FF), Brightness.dark, false,fonts),
      routerConfig: r,
    )));
  }
}

Future<void> lazyBootstrap(
  WidgetsBinding widgetsBinding,
  Environment env,
) async {
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  LoggerController.preInit();
  FlutterError.onError = Logger.logFlutterError;
  WidgetsBinding.instance.platformDispatcher.onError =
      Logger.logPlatformDispatcherError;

  final container = ProviderContainer(
    overrides: [environmentProvider.overrideWithValue(env)],
  );
  final stopWatch = Stopwatch()..start();


  // FlutterSmartDialog.init();
  await _init(
    "directories",
    () => container.read(appDirectoriesProvider.future),
  );
  await _init(
    "preferences",
        () => container.read(sharedPreferencesProvider.future),
  );


  await _init(
    "app info",
        () => container.read(appInfoProvider.future),
  );
  await _init(
    "profile repository",
        () => container.read(profileRepositoryProvider.future),
  );
  await _init(
    "mitm config repository",
        () => container.read(mitmConfigDaoProvider.future),
  );
  await _init(
    "mitm host repository",
        () => container.read(mitmHostDaoProvider.future),
  );
  await _init(
    "mitm config repository",
        () => container.read(mitmRuleDaoProvider.future),
  );
  await _init(
    "requestRepositoryProvider ",
        () => container.read(requestRepositoryProvider.future),
  );

  await _init(
    "mitmOverviewNotifierProvider ",
        () => container.read(mitmOverviewNotifierProvider.future),
  );
  await _safeInit(
    "active profile",
        () => container.read(activeProfileProvider.future),
    timeout: 1000,
  );
  if (PlatformUtils.isDesktop) {
    await _init(
      "window controller",
          () => container.read(windowNotifierProvider.future),
    );

    final silentStart = container.read(Preferences.silentStart);
    Logger.bootstrap.debug("silent start [${silentStart ? "Enabled" : "Disabled"}]");
    if (!silentStart) {
      await container.read(windowNotifierProvider.notifier).open(focus: false);
    } else {
      Logger.bootstrap.debug("silent start, remain hidden accessible via tray");
    }
    await _init(
      "auto start service",
          () => container.read(autoStartNotifierProvider.future),
    );
  }

  await _safeInit(
    "sing-box",
        () => container.read(singboxServiceProvider).init(),

  );
  // await _init(
  //   "window controller",
  //       () => container.read(windowNotifierProvider.future),
  // );
  await _safeInit(
    "system tray",
        () => container.read(systemTrayNotifierProvider.future),
    timeout: 1000,
  );

  LoggerController.init(container.read(logPathResolverProvider).appFile().path);
  stopWatch.stop();

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
  FlutterNativeSplash.remove();
}

Future<T> _init<T>(
  String name,
  Future<T> Function() initializer, {
  int? timeout,
}) async {
  final stopWatch = Stopwatch()..start();
  print("initializing [$name]");
  Future<T> func() => timeout != null
      ? initializer().timeout(Duration(milliseconds: timeout))
      : initializer();
  try {
    final result = await func();
    print("[$name] initialized in ${stopWatch.elapsedMilliseconds}ms");
    return result;
  } catch (e) {
    print("[$name] error initializing" + e.toString());
    rethrow;
  } finally {
    stopWatch.stop();
  }
}

Future<T?> _safeInit<T>(
  String name,
  Future<T> Function() initializer, {
  int? timeout,
}) async {
  try {
    return await _init(name, initializer, timeout: timeout);
  } catch (e) {
    print(e.toString());
    return null;
  }
}
