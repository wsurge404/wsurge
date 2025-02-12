import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/pages/home/home_chart.dart';

class HomeBodySection extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: HomeChart(),
              flex: 3,
            ),
            // Flexible(
            //   child: HomeSecondRight(),
            //   flex: 1,
            // )
          ],
        ),
      ],
    );
  }
}
