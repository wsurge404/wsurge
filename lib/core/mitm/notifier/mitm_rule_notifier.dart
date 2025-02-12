import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/mitm/data/mitm_providers.dart';
import 'package:wsurge/core/mitm/data/mitm_rule_source.dart';
import 'package:wsurge/core/mitm/model/mitm_rule_entity.dart';
import 'package:wsurge/core/mitm/notifier/mitm_overview_notifier.dart';

part 'mitm_rule_notifier.g.dart';

@riverpod
class MitmRuleNotifier extends _$MitmRuleNotifier with AppLogger {
  @override
  Stream<List<MitmRuleEntity>> build() {
    return _mitmRuleRepo
        .watchAll()
        .map((event) => event.getOrElse((l) => throw l));
  }

  MitmOverviewNotifier get _mitmOverviewNotifier =>
      ref.read(mitmOverviewNotifierProvider.notifier);

  MitmRuleSource get _mitmRuleRepo =>
      ref.read(mitmRuleDaoProvider).requireValue;

  // Future<Unit> selectActiveProfile(String id) async {
  //   loggy.debug('changing active profile to: [$id]');
  //   // await ref.read(hapticServiceProvider.notifier).lightImpact();
  //   return _profilesRepo.setAsActive(id).getOrElse((err) {
  //     loggy.warning('failed to set [$id] as active profile', err);
  //     throw err;
  //   }).run();
  // }

  Future<void> save(MitmRuleEntity entity) async {
    await _mitmRuleRepo.save(entity).match(
      (err) {
        loggy.warning('failed save mitm rule', err);
        throw err;
      },
      (_) {
        loggy.info(
          'successfully save mitm rule',
        );
        return unit;
      },
    ).run();
    await _mitmOverviewNotifier.changeOptions();
  }

  Future<void> delete(String id) async {
    await _mitmRuleRepo.deleteById(id).match(
      (err) {
        loggy.warning('failed to delete mitm rule', err);
        throw err;
      },
      (_) {
        loggy.info(
          'successfully delete  mitm rule',
        );
        return unit;
      },
    ).run();
    await _mitmOverviewNotifier.changeOptions();
  }
}
