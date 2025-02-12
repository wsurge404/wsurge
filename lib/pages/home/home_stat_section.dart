import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/localization/translations.dart';
import 'package:wsurge/core/stat/simple_card.dart';
import 'package:wsurge/core/stat/stats_card.dart';
import 'package:wsurge/stat/model/stats_entity.dart';
import 'package:wsurge/stat/notifier/stats_notifier.dart';
import 'package:wsurge/utils/number_formatters.dart';

class HomeStatSection extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stats = ref.watch(statsNotifierProvider).value ?? StatsEntity.empty();
    var translate = ref.read(translationsProvider);

    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: StatsCard(
                color: Colors.blueGrey,
                title: translate.stats.trafficLive,
                titleIcon: Icons.router,
                stats: [
                  PresentableStat(
                    label: const Text(
                      "↑",
                      style: TextStyle(color: Colors.green),
                    ),
                    data: Text(stats.uplink.speed()),
                    semanticLabel: translate.stats.uplink,
                  ),
                  PresentableStat(
                    label: Text(
                      "↓",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                    data: Text(stats.downlink.speed()),
                    semanticLabel: translate.stats.downlink,
                  ),
                ],
              ),
            ),
            Flexible(
              child: StatsCard(
                color: Colors.blueGrey,
                title: translate.stats.totalTransferred,
                titleIcon: FluentIcons.branch_fork_24_filled,
                stats: [
                  PresentableStat(
                    label: const Text(
                      "↑",
                      style: TextStyle(color: Colors.green),
                    ),
                    data: Text(stats.uplinkTotal.speed()),
                    semanticLabel: translate.stats.uplink,
                  ),
                  PresentableStat(
                    label: Text(
                      "↓",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                    data: Text(stats.downlinkTotal.speed()),
                    semanticLabel: translate.stats.downlink,
                  ),
                ],
              ),
            ),
            Flexible(
              child: SimpleStatCard(
                color: Colors.blueGrey,
                iconData: FluentIcons.data_pie_24_filled,
                title: translate.stats.coreMemory,
                description: stats.memory.size(),
                unit: '',
              ),
            ),
            Flexible(
              child: SimpleStatCard(
                iconData: FluentIcons.plug_disconnected_28_filled,
                color: Colors.blueGrey,
                title: translate.stats.connections,
                description: stats.connections.toString(),
                unit: '',
              ),
            ),
          ],
        )
      ],
    );
  }
}
