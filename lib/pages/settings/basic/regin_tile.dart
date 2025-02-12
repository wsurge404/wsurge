import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/common/adaptive_select_tile.dart';
import 'package:wsurge/core/config/data/config_option_repository.dart';
import 'package:wsurge/core/localization/locale_extensions.dart';
import 'package:wsurge/core/localization/locale_preferences.dart';
import 'package:wsurge/core/localization/translations.dart';
import 'package:wsurge/core/model/region.dart';
import 'package:wsurge/gen/translations.g.dart';

class RegionPrefTile extends HookConsumerWidget {
  const RegionPrefTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    final locale = ref.watch(localePreferencesProvider);
    final region = ref.watch(ConfigOptions.region);
    return AdaptiveSelectTile<Region>(
      value: region,
      onChanged: (locale) async {
        if (locale == null) return;
        await ref.watch(ConfigOptions.region.notifier).update(locale);
        await ref.read(localePreferencesProvider.notifier).changeLocale(AppLocaleUtils.parse(locale.language));
        await ref.watch(ConfigOptions.directDnsAddress.notifier).reset();
      },
    title: Text(t.settings.general.locale),
    subtitle: Text(locale.localeName),
      secondary: const Icon(FluentIcons.local_language_16_filled),
      options: [
        for (final r in Region.values)
          DropdownMenuItem(value: r, child: Text(r.present(t)))
      ],
    );
  }
}
