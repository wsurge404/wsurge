import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/preferences/preferences_provider.dart';
import 'package:wsurge/preferences/app_theme_mode.dart';

part 'theme_preferences.g.dart';

@Riverpod(keepAlive: true)
class ThemePreferences extends _$ThemePreferences {
  @override
  AppThemeMode build() {
    final persisted = ref
        .watch(sharedPreferencesProvider)
        .requireValue
        .getString("theme_mode");
    if (persisted == null) return AppThemeMode.system;
    return AppThemeMode.values.byName(persisted);
  }

  Future<void> changeThemeMode(AppThemeMode value) async {
    state = value;
    await ref
        .read(sharedPreferencesProvider)
        .requireValue
        .setString("theme_mode", value.name);
  }
}
