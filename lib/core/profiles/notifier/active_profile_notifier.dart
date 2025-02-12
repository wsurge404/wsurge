import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/profiles/data/profile_data_providers.dart';
import 'package:wsurge/core/profiles/model/profile_entity.dart';

part 'active_profile_notifier.g.dart';

@Riverpod(keepAlive: true)
class ActiveProfile extends _$ActiveProfile with AppLogger {
  @override
  Stream<ProfileEntity?> build() {
    loggy.debug("watching active profile");
    return ref
        .watch(profileRepositoryProvider)
        .requireValue
        .watchActiveProfile()
        .map((event) => event.getOrElse((l) => throw l));
  }
}

// TODO: move to specific feature
@Riverpod(keepAlive: true)
Stream<bool> hasAnyProfile(
  Ref ref,
) {
  return ref
      .watch(profileRepositoryProvider)
      .requireValue
      .watchHasAnyProfile()
      .map((event) => event.getOrElse((l) => throw l));
}
