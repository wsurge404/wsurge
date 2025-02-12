import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/common/nested_app_bar.dart';
import 'package:wsurge/pages/home/app_label.dart';

class HomeHeaderSection extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NestedAppBar(
      title: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: "Surge"),
            const TextSpan(text: " "),
            const WidgetSpan(
              child: AppVersionLabel(),
              alignment: PlaceholderAlignment.middle,
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
          // tooltip: t.config.quickSettings,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
