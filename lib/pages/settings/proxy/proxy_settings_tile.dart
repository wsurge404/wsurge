import 'package:dartx/dartx.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:humanizer/humanizer.dart';
import 'package:wsurge/common/section_card_with_heading.dart';
import 'package:wsurge/core/common/settings_input_dialog.dart';
import 'package:wsurge/core/common/value_input_tile.dart';
import 'package:wsurge/core/config/data/config_option_repository.dart';
import 'package:wsurge/core/localization/translations.dart';
import 'package:wsurge/core/utils/validators.dart';
import 'package:wsurge/pages/settings/proxy/proxy_mode_tile.dart';
import 'package:wsurge/pages/settings/proxy/tun_mode_tile.dart';

class ProxySettingsTile extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var t = ref.watch(translationsProvider);
    return SectionCardWithHeading(heading: "代理设置", children: [
      const Gap(10),
      ProxyModeTile(),
      const Gap(10),
      TunModeTile(),
      const Gap(10),
      ValuePreferenceWidget(
        value: ref.watch(ConfigOptions.mixedPort),
        preferences: ref.watch(ConfigOptions.mixedPort.notifier),
        title: t.config.mixedPort,
        inputToValue: int.tryParse,
        digitsOnly: true,
        validateInput: isPort,
        leading: Icon(FluentIcons.book_number_24_filled),
      ),
      const Gap(10),
      ValuePreferenceWidget(
        value: ref.watch(ConfigOptions.tproxyPort),
        preferences: ref.watch(ConfigOptions.tproxyPort.notifier),
        title: t.config.tproxyPort,
        inputToValue: int.tryParse,
        digitsOnly: true,
        validateInput: isPort,
        leading: Icon(FluentIcons.number_row_24_filled),
      ),
      const Gap(10),
      ValuePreferenceWidget(
        value: ref.watch(ConfigOptions.localDnsPort),
        preferences: ref.watch(ConfigOptions.localDnsPort.notifier),
        title: t.config.localDnsPort,
        inputToValue: int.tryParse,
        digitsOnly: true,
        validateInput: isPort,
        leading:  Icon(FluentIcons.calendar_week_numbers_24_regular),
      ),
      const Gap(10),
      ValuePreferenceWidget(
        value: ref.watch(ConfigOptions.connectionTestUrl),
        preferences: ref.watch(ConfigOptions.connectionTestUrl.notifier),
        title: t.config.connectionTestUrl,
        leading:  Icon(FluentIcons.text_number_format_24_filled),
      ), const Gap(10),
      ListTile(
        leading: Icon(FluentIcons.timer_10_24_filled),
        title: Text(t.config.urlTestInterval),
        subtitle: Text(
          ref.watch(ConfigOptions.urlTestInterval).toApproximateTime(isRelativeToNow: false),
        ),
        onTap: () async {
          final urlTestInterval = await SettingsSliderDialog(
            title: t.config.urlTestInterval,
            initialValue: ref.watch(ConfigOptions.urlTestInterval).inMinutes.coerceIn(0, 60).toDouble(),
            onReset: ref.read(ConfigOptions.urlTestInterval.notifier).reset,
            min: 1,
            max: 60,
            divisions: 60,
            labelGen: (value) => Duration(minutes: value.toInt()).toApproximateTime(isRelativeToNow: false),
          ).show(context);
          if (urlTestInterval == null) return;
          await ref.read(ConfigOptions.urlTestInterval.notifier).update(Duration(minutes: urlTestInterval.toInt()));
        },
      ), const Gap(10),
      ValuePreferenceWidget(
        leading: Icon(FluentIcons.animal_cat_28_filled),
        value: ref.watch(ConfigOptions.clashApiPort),
        preferences: ref.watch(ConfigOptions.clashApiPort.notifier),
        title: t.config.clashApiPort,
        validateInput: isPort,
        digitsOnly: true,
        inputToValue: int.tryParse,
      ),

    ]);
  }
}
