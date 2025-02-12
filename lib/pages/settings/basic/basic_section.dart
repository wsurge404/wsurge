import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/common/section_card_with_heading.dart';
import 'package:wsurge/core/auto_start/notifier/auto_start_notifier.dart';
import 'package:wsurge/core/localization/translations.dart';
import 'package:wsurge/core/preferences/general_preferences.dart';
import 'package:wsurge/pages/settings/basic/regin_tile.dart';
import 'package:wsurge/utils/platform_utils.dart';

class BasicSection extends HookConsumerWidget {
  const BasicSection({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    return SectionCardWithHeading(heading: t.settings.pageTitle, children: [
      const Gap(10),
      RegionPrefTile(),
      const Gap(10),
      if (PlatformUtils.isDesktop) ...[
        SwitchListTile(
          secondary: Icon(FluentIcons.flash_auto_24_filled),
          title: Text(t.settings.general.autoStart),
          value: ref.watch(autoStartNotifierProvider).asData!.value,
          onChanged: (value) async {
            if (value) {
              await ref.read(autoStartNotifierProvider.notifier).enable();
            } else {
              await ref.read(autoStartNotifierProvider.notifier).disable();
            }
          },
        ),
        SwitchListTile(
          secondary: Icon(FluentIcons.alert_snooze_24_filled),
          title: Text(t.settings.general.silentStart),
          value: ref.watch(Preferences.silentStart),
          onChanged: (value) async {
            await ref.read(Preferences.silentStart.notifier).update(value);
          },
        ),
      ],
    ]);
  }
}
