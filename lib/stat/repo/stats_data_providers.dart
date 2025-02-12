import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/singbox/singbox_service_provider.dart';
import 'package:wsurge/stat/repo/stats_repository.dart';

part 'stats_data_providers.g.dart';

@Riverpod(keepAlive: true)
StatsRepository statsRepository(Ref ref) {
  return StatsRepositoryImpl(singbox: ref.watch(singboxServiceProvider));
}
