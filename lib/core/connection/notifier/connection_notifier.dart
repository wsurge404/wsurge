
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/connection/data/connection_data_providers.dart';
import 'package:wsurge/core/connection/model/connection_status.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/preferences/general_preferences.dart';
import 'package:wsurge/core/profiles/model/profile_entity.dart';
import 'package:wsurge/core/profiles/notifier/active_profile_notifier.dart';

import '../data/connection_repository.dart';

part 'connection_notifier.g.dart';

@Riverpod(keepAlive: true)
class ConnectionNotifier extends _$ConnectionNotifier with AppLogger {
  @override
  Stream<ConnectionStatus> build() async* {
    yield* _connectionRepo.watchConnectionStatus();
  }

  ConnectionRepository get _connectionRepo =>
      ref.read(connectionRepositoryProvider);

  Future<void> mayConnect() async {
    if (state case AsyncData(:final value)) {
      if (value case Disconnected()) return _connect();
    }
  }

  Future<void> toggleConnection() async {
    await _connect();
  }
  Future<void> abortConnection() async {
    if (state case AsyncData(:final value)) {
      switch (value) {
        case Connected() || Connecting():
          loggy.debug("aborting connection");
          await _disconnect();
        default:
      }
    }
  }
  Future<void> reconnect(ProfileEntity? profile) async {
    if (state case AsyncData(:final value) when value == const Connected()) {
      if (profile == null) {
        loggy.info("no active profile, disconnecting");
        return _disconnect();
      }
      loggy.info("active profile changed, reconnecting");
      await ref.read(Preferences.startedByUser.notifier).update(true);
      await _connectionRepo
          .reconnect(
        profile.id,
        profile.name,
        ref.read(Preferences.disableMemoryLimit),
        profile.testUrl,
      )
          .mapLeft((err) {
        loggy.warning("error reconnecting", err);
        state = AsyncError(err, StackTrace.current);
      }).run();
    }
  }

  // Future<void> abortConnection() async {
  //   if (state case AsyncData(:final value)) {
  //     switch (value) {
  //       case Connected() || Connecting():
  //         loggy.debug("aborting connection");
  //         await _disconnect();
  //       default:
  //     }
  //   }
  // }

  Future<void> _connect() async {
    final activeProfile = await ref.read(activeProfileProvider.future);
    if (activeProfile == null) {
      loggy.info("no active profile, not connecting");
      return;
    }
    await _connectionRepo
        .connect(
      activeProfile.id,
      activeProfile.name,
      ref.read(Preferences.disableMemoryLimit),
      activeProfile.testUrl,
    )
        .mapLeft((err) async {
      loggy.warning("error connecting", err);
      //Go err is not normal object to see the go errors are string and need to be dumped
      loggy.warning(err);
      // if (err.toString().contains("panic")) {
      //   await Sentry.captureException(Exception(err.toString()));
      // }
      await ref.read(Preferences.startedByUser.notifier).update(false);
      state = AsyncError(err, StackTrace.current);
    }).run();
  }

  Future<void> _disconnect() async {
    await _connectionRepo.disconnect().mapLeft((err) {
      loggy.warning("error disconnecting", err);
      state = AsyncError(err, StackTrace.current);
    }).run();
  }
}

@Riverpod(keepAlive: true)
Future<bool> serviceRunning(Ref ref) => ref
    .watch(
      connectionNotifierProvider.selectAsync((data) => data.isConnected),
    )
    .onError((error, stackTrace) => false);
