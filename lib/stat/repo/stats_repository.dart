import 'package:fpdart/fpdart.dart';
import 'package:wsurge/singbox/singbox.dart';
import 'package:wsurge/stat/model/stats_entity.dart';
import 'package:wsurge/utils/exception_handler.dart';

abstract interface class StatsRepository {
  Stream<Either<StatsEntity, StatsEntity>> watchStats();
}

class StatsRepositoryImpl implements StatsRepository {
  StatsRepositoryImpl({required this.singbox});

  final SingboxService singbox;

  @override
  Stream<Either<StatsEntity, StatsEntity>> watchStats() {
    return singbox.watchStats().map(
      (event) {
        return StatsEntity(
          uplink: event.uplink,
          downlink: event.downlink,
          uplinkTotal: event.uplinkTotal,
          downlinkTotal: event.downlinkTotal,
          memory: event.memory,
          connections: event.connectionsIn
        );
      },
    ).handleExceptions((Object error, StackTrace stackTrace) {
      return StatsEntity.empty();
    });
  }
}
