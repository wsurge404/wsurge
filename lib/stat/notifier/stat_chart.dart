import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/connection/notifier/connection_notifier.dart';
import 'package:wsurge/stat/model/stat_summary.dart';
import 'package:wsurge/stat/model/stats_entity.dart';
import 'package:wsurge/stat/notifier/stats_notifier.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';

part 'stat_chart.g.dart';

@riverpod
class StatsSummaryNotifier extends _$StatsSummaryNotifier with AppLogger {
  List<StatSummary> _list = [];

  @override
  Future<List<StatSummary>> build() async{
    final serviceRunning = ref.watch(serviceRunningProvider).value ?? false;
    if (serviceRunning) {
      var a = ref.watch(statsNotifierProvider).value ?? StatsEntity.empty();
      _list.add(StatSummary(uplink: a.uplink, downlink: a.downlink));
    }
    return _list;
  }
}
