// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_overview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestOverviewState {
  AsyncValue<List<RequestEntity>> get requests =>
      throw _privateConstructorUsedError;
  bool get paused => throw _privateConstructorUsedError;
  String get filter => throw _privateConstructorUsedError;
  LogLevel? get levelFilter => throw _privateConstructorUsedError;

  /// Create a copy of RequestOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOverviewStateCopyWith<RequestOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOverviewStateCopyWith<$Res> {
  factory $RequestOverviewStateCopyWith(RequestOverviewState value,
          $Res Function(RequestOverviewState) then) =
      _$RequestOverviewStateCopyWithImpl<$Res, RequestOverviewState>;
  @useResult
  $Res call(
      {AsyncValue<List<RequestEntity>> requests,
      bool paused,
      String filter,
      LogLevel? levelFilter});
}

/// @nodoc
class _$RequestOverviewStateCopyWithImpl<$Res,
        $Val extends RequestOverviewState>
    implements $RequestOverviewStateCopyWith<$Res> {
  _$RequestOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = null,
    Object? paused = null,
    Object? filter = null,
    Object? levelFilter = freezed,
  }) {
    return _then(_value.copyWith(
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<RequestEntity>>,
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
abstract class _$$RequestOverviewStateImplCopyWith<$Res>
    implements $RequestOverviewStateCopyWith<$Res> {
  factory _$$RequestOverviewStateImplCopyWith(_$RequestOverviewStateImpl value,
          $Res Function(_$RequestOverviewStateImpl) then) =
      __$$RequestOverviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<RequestEntity>> requests,
      bool paused,
      String filter,
      LogLevel? levelFilter});
}

/// @nodoc
class __$$RequestOverviewStateImplCopyWithImpl<$Res>
    extends _$RequestOverviewStateCopyWithImpl<$Res, _$RequestOverviewStateImpl>
    implements _$$RequestOverviewStateImplCopyWith<$Res> {
  __$$RequestOverviewStateImplCopyWithImpl(_$RequestOverviewStateImpl _value,
      $Res Function(_$RequestOverviewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = null,
    Object? paused = null,
    Object? filter = null,
    Object? levelFilter = freezed,
  }) {
    return _then(_$RequestOverviewStateImpl(
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<RequestEntity>>,
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

class _$RequestOverviewStateImpl extends _RequestOverviewState {
  const _$RequestOverviewStateImpl(
      {this.requests = const AsyncLoading(),
      this.paused = false,
      this.filter = "",
      this.levelFilter})
      : super._();

  @override
  @JsonKey()
  final AsyncValue<List<RequestEntity>> requests;
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
    return 'RequestOverviewState(requests: $requests, paused: $paused, filter: $filter, levelFilter: $levelFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOverviewStateImpl &&
            (identical(other.requests, requests) ||
                other.requests == requests) &&
            (identical(other.paused, paused) || other.paused == paused) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.levelFilter, levelFilter) ||
                other.levelFilter == levelFilter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, requests, paused, filter, levelFilter);

  /// Create a copy of RequestOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOverviewStateImplCopyWith<_$RequestOverviewStateImpl>
      get copyWith =>
          __$$RequestOverviewStateImplCopyWithImpl<_$RequestOverviewStateImpl>(
              this, _$identity);
}

abstract class _RequestOverviewState extends RequestOverviewState {
  const factory _RequestOverviewState(
      {final AsyncValue<List<RequestEntity>> requests,
      final bool paused,
      final String filter,
      final LogLevel? levelFilter}) = _$RequestOverviewStateImpl;
  const _RequestOverviewState._() : super._();

  @override
  AsyncValue<List<RequestEntity>> get requests;
  @override
  bool get paused;
  @override
  String get filter;
  @override
  LogLevel? get levelFilter;

  /// Create a copy of RequestOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOverviewStateImplCopyWith<_$RequestOverviewStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
