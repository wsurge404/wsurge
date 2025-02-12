import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/mitm/notifier/mitm_rule_notifier.dart';
import 'package:wsurge/utils/placeholders.dart';

class RuleTableBodySection extends HookConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var notifier = ref.watch(mitmRuleNotifierProvider.notifier);
    var state = ref.watch(mitmRuleNotifierProvider);
    return Builder(
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.2))),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: const Gap(100),
              ),
              switch (state) {
                AsyncData(value: final rules) => SliverList.builder(
                  itemCount: rules.length,
                  itemBuilder: (context, index) {
                    final log = rules[index];
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 4,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Gap(20),
                              Expanded(
                                child: Text(
                                  "${rules[index].urlRegex} ${rules[index].type.name} ${rules[index].replaceContent!}",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                flex: 8,
                              ),
                              Expanded(
                                child: IconButton(
                                  onPressed: () => notifier.delete(log.id!),
                                  icon: const Icon(
                                      FluentIcons.delete_lines_20_regular),
                                  iconSize: 20,
                                ),
                                flex: 2,
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          indent: 16,
                          endIndent: 16,
                          height: 4,
                        ),
                      ],
                    );
                  },
                ),
                AsyncError(:final error) => SliverErrorBodyPlaceholder(
                  "error",
                ),
                _ => const SliverLoadingBodyPlaceholder(),
              },
              SliverOverlapInjector(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

}