import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';

class DomainTableHeaderSection extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverPinnedHeader(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme
              .of(context)
              .colorScheme
              .surface,
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Gap(20),
              Expanded(
                child: Text("域名"),
                flex: 8,
              ),
              Expanded(
                child: Text("操作"),
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }

}