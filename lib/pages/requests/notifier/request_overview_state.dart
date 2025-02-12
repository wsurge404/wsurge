import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/pages/log/model/log_level.dart';
import 'package:wsurge/pages/requests/model/request_entity.dart';

part 'request_overview_state.freezed.dart';

@freezed
class RequestOverviewState with _$RequestOverviewState {
  const RequestOverviewState._();

  const factory RequestOverviewState({
    @Default(AsyncLoading()) AsyncValue<List<RequestEntity>> requests,
    @Default(false) bool paused,
    @Default("") String filter,
    LogLevel? levelFilter,
  }) = _RequestOverviewState;
}
