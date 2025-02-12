import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/common/section_card_with_heading.dart';
import 'package:wsurge/core/localization/translations.dart';
import 'package:wsurge/pages/settings/appearance/theme.dart';

class AppearanceSection extends HookConsumerWidget {
  const AppearanceSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);

    return SectionCardWithHeading(heading: t.settings.general.sectionTitle, children: [ThemeTitle()]);
  }
}

