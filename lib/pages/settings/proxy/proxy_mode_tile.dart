import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/common/adaptive_select_tile.dart';
import 'package:wsurge/core/config/data/config_option_repository.dart';
import 'package:wsurge/core/localization/translations.dart';
import 'package:wsurge/singbox/model/singbox_config_enum.dart';

class ProxyModeTile extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var serviceMode = ref.watch(ConfigOptions.serviceMode);
    var notifier = ref.watch(ConfigOptions.serviceMode.notifier);
    var t = ref.watch(translationsProvider);
    return AdaptiveSelectTile<ServiceMode>(
      secondary: const Icon(FluentIcons.weather_moon_48_filled),
      subtitle: Text(serviceMode.present(t)),
      title: Text("代理模式"),
      value: serviceMode,
      options: ServiceMode.values.map((it)=>
         DropdownMenuItem(
          value: it,
          child: Text(it.present(t)),
        )
      ).toList(),
      onChanged: (value) async {
        if (value != null) {
          await notifier.update(value);
        }
      },
    );
  }
}
