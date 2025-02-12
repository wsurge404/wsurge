import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/common/adaptive_select_tile.dart';
import 'package:wsurge/core/localization/translations.dart';
import 'package:wsurge/preferences/app_theme_mode.dart';
import 'package:wsurge/preferences/theme_preferences.dart';

class ThemeTitle extends HookConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(themePreferencesProvider);
    final t = ref.watch(translationsProvider);
   return  AdaptiveSelectTile<AppThemeMode>(
      secondary: const Icon(FluentIcons.weather_moon_48_filled),
      title: Text(t.settings.general.themeMode),
      subtitle: Text(preferences.present(t)),
      value: preferences,
      options: [
        DropdownMenuItem(
          value: AppThemeMode.dark,
          child: Text(AppThemeMode.dark.present(t)),
        ),
        DropdownMenuItem(
          value: AppThemeMode.light,
          child: Text(AppThemeMode.light.present(t)),
        ),
        DropdownMenuItem(
          value: AppThemeMode.system,
          child: Text(AppThemeMode.system.present(t)),
        ),
      ],
      onChanged: (value) async{
        if (value != null) {
          await ref.read(themePreferencesProvider.notifier).changeThemeMode(value);
        }
      },
    );
  }

}