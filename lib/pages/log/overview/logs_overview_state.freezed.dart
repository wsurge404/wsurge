// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logs_overview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogsOverviewState {
  AsyncValue<List<LogEntity>> get logs => throw _privateConstructorUsedError;
  bool get paused => throw _privateConstructorUsedError;
  String get filter => throw _privateConstructorUsedError;
  LogLevel? get levelFilter => throw _privateConstructorUsedError;

  /// Create a copy of LogsOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogsOverviewStateCopyWith<LogsOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogsOverviewStateCopyWith<$Res> {
  factory $LogsOverviewStateCopyWith(
          LogsOverviewState value, $Res Function(LogsOverviewState) then) =
      _$LogsOverviewStateCopyWithImpl<$Res, LogsOverviewState>;
  @useResult
  $Res call(
      {AsyncValue<List<LogEntity>> logs,
      bool paused,
      String filter,
      LogLevel? levelFilter});
}

/// @nodoc
class _$LogsOverviewStateCopyWithImpl<$Res, $Val extends LogsOverviewState>
    implements $LogsOverviewStateCopyWith<$Res> {
  _$LogsOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogsOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logs = null,
    Object? paused = null,
    Object? filter = null,
    Object? levelFilter = freezed,
  }) {
    return _then(_value.copyWith(
      logs: null == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<LogEntity>>,
      paused: null == paused
          ? _value.paused
          : paused // ignore: cast_nullable_to_non_nullable
              as bool,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      levelFilter: freezed == levelFilter
          ? _value.levelFilter
          : levelFilter // ignore: cast_nullable_to_non_nullable
              as LogLevel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogsOverviewStateImplCopyWith<$Res>
    implements $LogsOverviewStateCopyWith<$Res> {
  factory _$$LogsOverviewStateImplCopyWith(_$LogsOverviewStateImpl value,
          $Res Function(_$LogsOverviewStateImpl) then) =
      __$$LogsOverviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<LogEntity>> logs,
      bool paused,
      String filter,
      LogLevel? levelFilter});
}

/// @nodoc
class __$$LogsOverviewStateImplCopyWithImpl<$Res>
    extends _$LogsOverviewStateCopyWithImpl<$Res, _$LogsOverviewStateImpl>
    implements _$$LogsOverviewStateImplCopyWith<$Res> {
  __$$LogsOverviewStateImplCopyWithImpl(_$LogsOverviewStateImpl _value,
      $Res Function(_$LogsOverviewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogsOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logs = null,
    Object? paused = null,
    Object? filter = null,
    Object? levelFilter = freezed,
  }) {
    return _then(_$LogsOverviewStateImpl(
      logs: null == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<LogEntity>>,
      paused: null == paused
          ? _value.paused
          : paused // ignore: cast_nullable_to_non_nullable
              as bool,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      levelFilter: freezed == levelFilter
          ? _value.levelFilter
          : levelFilter // ignore: cast_nullable_to_non_nullable
              as LogLevel?,
    ));
  }
}

/// @nodoc

class _$LogsOverviewStateImpl extends _LogsOverviewState {
  const _$LogsOverviewStateImpl(
      {this.logs = const AsyncLoading(),
      this.paused = false,
      this.filter = "",
      this.levelFilter})
      : super._();

  @override
  @JsonKey()
  final AsyncValue<List<LogEntity>> logs;
  @override
  @JsonKey()
  final bool paused;
  @override
  @JsonKey()
  final String filter;
  @override
  final LogLevel? levelFilter;

  @override
  String toString() {
    return 'LogsOverviewState(logs: $logs, paused: $paused, filter: $filter, levelFilter: $levelFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogsOverviewStateImpl &&
            (identical(other.logs, logs) || other.logs == logs) &&
            (identical(other.paused, paused) || other.paused == paused) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.levelFilter, levelFilter) ||
                other.levelFilter == levelFilter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, logs, paused, filter, levelFilter);

  /// Create a copy of LogsOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogsOverviewStateImplCopyWith<_$LogsOverviewStateImpl> get copyWith =>
      __$$LogsOverviewStateImplCopyWithImpl<_$LogsOverviewStateImpl>(
          this, _$identity);
}

abstract class _LogsOverviewState extends LogsOverviewState {
  const factory _LogsOverviewState(
      {final AsyncValue<List<LogEntity>> logs,
      final bool paused,
      final String filter,
      final LogLevel? levelFilter}) = _$LogsOverviewStateImpl;
  const _LogsOverviewState._() : super._();

  @override
  AsyncValue<List<LogEntity>> get logs;
  @override
  bool get paused;
  @override
  String get filter;
  @override
  LogLevel? get levelFilter;

  /// Create a copy of LogsOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogsOverviewStateImplCopyWith<_$LogsOverviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
