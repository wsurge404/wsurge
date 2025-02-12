import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/common/adaptive_select_tile.dart';
import 'package:wsurge/core/config/data/config_option_repository.dart';
import 'package:wsurge/singbox/model/singbox_config_enum.dart';

class TunModeTile extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var tunMode = ref.watch(ConfigOptions.tunImplementation);
    var notifier = ref.watch(ConfigOptions.tunImplementation.notifier);
    return AdaptiveSelectTile<TunImplementation>(
      secondary: const Icon(FluentIcons.weather_moon_48_filled),
      title: Text("tun 模式"),
      subtitle: Text(tunMode.name),
      value: tunMode,
      options: TunImplementation.values
          .map((it) => DropdownMenuItem(
                value: it,
                child: Text(it.name),
              ))
          .toList(),
      onChanged: (value) async {
        if (value != null) {
          await notifier.update(value);
        }
      },
    );
  }
}
