import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:wsurge/stat/model/stat_summary.dart';
import 'package:wsurge/stat/notifier/stat_chart.dart';


class HomeChart extends HookConsumerWidget {
  HomeChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(statsSummaryNotifierProvider).value;
    final ThemeData(:textTheme) = Theme.of(context);
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultTextStyle(
                  style: textTheme.titleMedium!,
                  child: const Text("Network History"),
                ),
              ],
            ),
            // Gap(20),
            SfCartesianChart(
                primaryXAxis: CategoryAxis(isVisible: false),
                primaryYAxis: NumericAxis(
                  numberFormat: NumberFormat.compact(locale: 'en_US'),
                  labelFormat: '{value}B',
                ),
                legend: Legend(isVisible: true, position: LegendPosition.top),
                series: <CartesianSeries>[
                  // Renders line chart
                  LineSeries<StatSummary, int>(
                      name: "up",
                      dataSource: data,
                      color:Colors.green,
                      xValueMapper: (StatSummary stat, _) => _,
                      yValueMapper: (StatSummary stat, _) => stat.uplink),
                  LineSeries<StatSummary, int>(
                      name: "down",
                      dataSource: data,
                      color:Colors.red,
                      xValueMapper: (StatSummary stat, _) => _,
                      yValueMapper: (StatSummary stat, _) => stat.downlink),
                ])
          ],
        ));
  }
}
