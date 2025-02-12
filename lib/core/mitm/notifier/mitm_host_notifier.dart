import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/mitm/data/mitm_host_source.dart';
import 'package:wsurge/core/mitm/data/mitm_providers.dart';
import 'package:wsurge/core/mitm/model/mitm_host_entity.dart';
import 'package:wsurge/core/mitm/notifier/mitm_overview_notifier.dart';

part 'mitm_host_notifier.g.dart';

@riverpod
class MitmHostNotifier extends _$MitmHostNotifier
    with AppLogger {
  @override
  Stream<List<MitmHostEntity>> build() {
    return _mitmHostRepo.watchAll().map((event) =>
        event.getOrElse((l) => throw l));
  }
  MitmOverviewNotifier get _mitmOverviewNotifier =>
      ref
          .read(mitmOverviewNotifierProvider.notifier);
  MitmHostSource get _mitmHostRepo =>
      ref
          .read(mitmHostDaoProvider)
          .requireValue;

  // Future<Unit> selectActiveProfile(String id) async {
  //   loggy.debug('changing active profile to: [$id]');
  //   // await ref.read(hapticServiceProvider.notifier).lightImpact();
  //   return _profilesRepo.setAsActive(id).getOrElse((err) {
  //     loggy.warning('failed to set [$id] as active profile', err);
  //     throw err;
  //   }).run();
  // }

  Future<void> save(MitmHostEntity entity) async {
    await _mitmHostRepo.save(entity).match(
          (err) {
        loggy.warning('failed save mitm host', err);
        throw err;
      },
          (_) {
        loggy.info(
          'successfully save mitm host',
        );
        return unit;
      },
    ).run();
    await _mitmOverviewNotifier.changeOptions();
  }

  Future<void> delete(String id) async {
    await _mitmHostRepo.deleteById(id).match(
          (err) {
        loggy.warning('failed to delete mitm host', err);
        throw err;
      },
          (_) {
        loggy.info(
          'successfully delete  mitm host',
        );
        return unit;
      },
    ).run();
    await _mitmOverviewNotifier.changeOptions();
  }

}