import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/mitm/data/mitm_config_source.dart';
import 'package:wsurge/core/mitm/data/mitm_providers.dart';
import 'package:wsurge/core/mitm/model/mitm_config_entity.dart';
import 'package:wsurge/core/mitm/notifier/mitm_overview_notifier.dart';

part 'mitm_config_notifier.g.dart';

@riverpod
class MitmConfigNotifier extends _$MitmConfigNotifier
    with AppLogger {
  @override
  Stream<MitmConfigEntity?> build() {
    return _mitmConfigRepo.get().map((event) => event.getOrElse((l) => throw l));
  }
  MitmOverviewNotifier get _mitmOverviewNotifier =>
      ref
          .read(mitmOverviewNotifierProvider.notifier);
  MitmConfigSource get _mitmConfigRepo =>
      ref
          .read(mitmConfigDaoProvider)
          .requireValue;


  Future<void> save(MitmConfigEntity entity) async {
    await _mitmConfigRepo.save(entity).match(
          (err) {
        loggy.warning('failed save mitm config', err);
        throw err;
      },
          (_) {
        loggy.info(
          'successfully save mitm config',
        );
        return unit;
      },
    ).run();
    await _mitmOverviewNotifier.changeOptions();
  }

  // Future<void> delete(String id) async {
  //   await _mitmConfigRepo.deleteById(id).match(
  //         (err) {
  //       loggy.warning('failed to delete mitm config', err);
  //       throw err;
  //     },
  //         (_) {
  //       loggy.info(
  //         'successfully delete  mitm config',
  //       );
  //       return unit;
  //     },
  //   ).run();
  // }

}