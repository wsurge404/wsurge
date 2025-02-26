import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/pages/log/model/log_entity.dart';
import 'package:wsurge/pages/log/model/log_level.dart';

part 'logs_overview_state.freezed.dart';

@freezed
class LogsOverviewState with _$LogsOverviewState {
  const LogsOverviewState._();

  const factory LogsOverviewState({
    @Default(AsyncLoading()) AsyncValue<List<LogEntity>> logs,
    @Default(false) bool paused,
    @Default("") String filter,
    LogLevel? levelFilter,
  }) = _LogsOverviewState;
}
