import 'dart:collection';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/proxy/model/proxy_entity.dart';
import 'package:wsurge/core/proxy/notifier/proxies_overview_notifier.dart';
import 'package:wsurge/core/proxy/widget/proxy_tile.dart';
import 'package:wsurge/utils/async_mutation.dart';

class ProxyGroupTile extends HookConsumerWidget with AppLogger {
  final Widget title;
  final ProxyGroupEntity group;
  final ValueChanged<String>? onChanged;
  final Map<String, String>? presets = new HashMap<String, String>();

  ProxyGroupTile({
    super.key,
    required this.group,
    this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(proxiesOverviewNotifierProvider.notifier);
    final sortBy = ref.watch(proxiesSortNotifierProvider);
    presets!['222'] = '223213';
    final animation = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );
    final selectActiveProxyMutation = useMutation(initialOnFailure: (error) {}
        // CustomToast.error(t.presentShortError(error)).show(context),
        );
    final labelStyle = Theme.of(context).textTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w500,
        );

    return LayoutBuilder(builder: (context, constrain) {
      return Card(
        child: ExpansionTile(
          title: DefaultTextStyle(
            style: Theme.of(context).textTheme.titleSmall!,
            child: title,
          ),
          shape: const Border(),
          leading: AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Transform.rotate(
                angle: (animation.value * 3.14) / 2,
                child: child,
              );
            },
            child: const Icon(Icons.chevron_right),
          ),
          trailing: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: IconButton(onPressed: ()async{
              await notifier.urlTest(group.tag);
            },
                tooltip: "延迟测试",
                icon: Icon(FluentIcons.wifi_off_24_filled))
          ),
          onExpansionChanged: (value) {
            if (value) {
              animation.forward();
            } else {
              animation.reverse();
            }
          },
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                final crossAxisCount = (constraints.maxWidth / 268).floor();
                final itemWidth =
                    (constraints.maxWidth - (crossAxisCount - 1) * 10) /
                        crossAxisCount;
                final itemHeight = 68;
                final rowCount = (group.items.length / crossAxisCount).ceil();
                return SizedBox(
                  height: rowCount * itemHeight + (rowCount - 1) * 10,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (constraints.maxWidth / 268).floor(),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 68,
                    ),
                    itemCount: group.items.length,
                    itemBuilder: (context, index) {
                      final proxy = group.items[index];
                      return ProxyTile(proxy,
                          selected: group.selected == proxy.tag,
                          onSelect: () async {
                        if (selectActiveProxyMutation.state.isInProgress) {
                          return;
                        }
                        selectActiveProxyMutation.setFuture(
                          notifier.changeProxy(
                            group.tag,
                            proxy.tag,
                          ),
                        );
                      });
                    },
                  ),
                );
              },
            ),
          ],
        ),
      );
    });
  }
}
