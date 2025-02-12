import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/connection/notifier/connection_notifier.dart';
import 'package:wsurge/stat/model/stats_entity.dart';
import 'package:wsurge/stat/repo/stats_data_providers.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/utils/riverpod_utils.dart';

part 'stats_notifier.g.dart';

@riverpod
class StatsNotifier extends _$StatsNotifier with AppLogger {
  @override
  Stream<StatsEntity> build() async* {
    ref.disposeDelay(const Duration(seconds: 10));
    final serviceRunning = await ref.watch(serviceRunningProvider.future);
    if (serviceRunning) {
      yield* ref.watch(statsRepositoryProvider).watchStats().map((event) => event.getOrElse((_) => StatsEntity.empty()));
    } else {
      yield* Stream.value(StatsEntity.empty());
    }
  }
}
