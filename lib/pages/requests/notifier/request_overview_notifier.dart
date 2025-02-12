import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wsurge/core/connection/notifier/connection_notifier.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/pages/log/data/log_data_providers.dart';
import 'package:wsurge/pages/log/model/log_level.dart';
import 'package:wsurge/pages/requests/data/request_providers.dart';
import 'package:wsurge/pages/requests/model/request_entity.dart';
import 'package:wsurge/pages/requests/notifier/request_overview_state.dart';
import 'package:wsurge/utils/callback_debouncer.dart';
import 'package:wsurge/utils/riverpod_utils.dart';

part 'request_overview_notifier.g.dart';

@riverpod
class RequestOverviewNotifier extends _$RequestOverviewNotifier with AppLogger {
  @override
  RequestOverviewState build() {
    ref.disposeDelay(const Duration(seconds: 20));
    state = const RequestOverviewState();
    ref.onDispose(
      () async {
        loggy.debug("disposing");
        await _listener?.cancel();
        _listener = null;
      },
    );
    ref.onCancel(
      () {
        if (_listener?.isPaused != true) {
          loggy.debug("pausing");
          _listener?.pause();
        }
      },
    );
    ref.onResume(
      () {
        if (!state.paused && (_listener?.isPaused ?? false)) {
          loggy.debug("resuming");
          _listener?.resume();
        }
      },
    );
    _addListeners();
    return const RequestOverviewState();
  }

  StreamSubscription? _listener;

  Future<void> _addListeners() async {
    final serviceRunning = await ref.watch(serviceRunningProvider.future);
    if (!serviceRunning) {
      return;
    }
    loggy.debug("adding listeners");
    await _listener?.cancel();
    _listener = ref
        .read(requestRepositoryProvider)
        .requireValue
        .watchRequest()
        .throttle(
          (_) => Stream.value(_listener?.isPaused ?? false),
          leading: false,
          trailing: true,
        )
        .throttleTime(
          const Duration(milliseconds: 250),
          leading: false,
          trailing: true,
        )
        .asyncMap(
      (event) async {
        await event.fold(
          (f) {
            _logs = [];
            state = state.copyWith(requests: AsyncError(f, StackTrace.current));
          },
          (a) async {
            _logs.add(a);
            state = state.copyWith(requests: AsyncData(await _computeLogs()));
          },
        );
      },
    ).listen((event) {});
  }

  List<RequestEntity> _logs = [];
  final _debouncer = CallbackDebouncer(const Duration(milliseconds: 200));
  LogLevel? _levelFilter;
  String _filter = "";

  Future<List<RequestEntity>> _computeLogs() async {
    if (_levelFilter == null && _filter.isEmpty) return _logs.toList();
    return _logs.toList();
    // return _logs.where((e) {
    //   return (_filter.isEmpty || e.message.contains(_filter)) &&
    //       (_levelFilter == null ||
    //           e.level == null ||
    //           e.level!.index >= _levelFilter!.index);
    // }).toList();
  }

  void pause() {
    loggy.debug("pausing");
    _listener?.pause();
    state = state.copyWith(paused: true);
  }

  void resume() {
    loggy.debug("resuming");
    _listener?.resume();
    state = state.copyWith(paused: false);
  }

  Future<void> clear() async {
    loggy.debug("clearing");
    await ref.read(logRepositoryProvider).requireValue.clearLogs().match(
      (l) {
        loggy.warning("error clearing logs", l);
      },
      (_) {
        _logs = [];
        state = state.copyWith(requests: const AsyncData([]));
      },
    ).run();
  }

// void filterMessage(String? filter) {
//   _filter = filter ?? '';
//   _debouncer(
//     () async {
//       if (state.requests case AsyncData()) {
//         state = state.copyWith(
//           filter: _filter,
//           requests: AsyncData(await _computeLogs()),
//         );
//       }
//     },
//   );
// }

// Future<void> filterLevel(LogLevel? level) async {
//   _levelFilter = level;
//   if (state.logs case AsyncData()) {
//     state = state.copyWith(
//       levelFilter: _levelFilter,
//       logs: AsyncData(await _computeLogs()),
//     );
//   }
// }
}
