import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/database/database_provider.dart';
import 'package:wsurge/core/mitm/data/mitm_config_source.dart';
import 'package:wsurge/core/mitm/data/mitm_host_source.dart';
import 'package:wsurge/core/mitm/data/mitm_rule_source.dart';

part 'mitm_providers.g.dart';

@Riverpod(keepAlive: true)
Future<MitmConfigSource> mitmConfigDao(Ref ref) async {
  final repo = MitmConfigDao(ref.watch(appDatabaseProvider));
  return repo;
}
@Riverpod(keepAlive: true)
Future<MitmHostSource> mitmHostDao(Ref ref) async {
  final repo = MitmHostDao(ref.watch(appDatabaseProvider));
  return repo;
}
@Riverpod(keepAlive: true)
Future<MitmRuleSource> mitmRuleDao(Ref ref) async {
  final repo = MitmRuleDao(ref.watch(appDatabaseProvider));
  return repo;
}
