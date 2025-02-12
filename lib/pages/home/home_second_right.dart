import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wsurge/pages/home/model_card.dart';

class HomeSecondRight extends StatelessWidget {
  HomeSecondRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData(:textTheme) = Theme.of(context);
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTextStyle(
                  style: textTheme.titleMedium!,
                  child: const Text("Network History"),
                ),
              ],
            ),
            Gap(40),
            ModelCard(
              title: '全局',
              unit: "",
              description: "仅走global策略",
              color: Colors.blueGrey,
            ),
            ModelCard(
              title: '全局',
              unit: "",
              description: "仅走global策略",
              color: Colors.blueGrey,
            ),
            ModelCard(
              title: '全局',
              unit: "",
              description: "仅走global策略",
              color: Colors.blueGrey,
            ),

          ],
        ));
  }
}
