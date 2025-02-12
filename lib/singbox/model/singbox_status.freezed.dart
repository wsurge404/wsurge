// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'singbox_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingboxStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SingboxAlert? alert, String? message) stopped,
    required TResult Function() starting,
    required TResult Function() started,
    required TResult Function() stopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SingboxAlert? alert, String? message)? stopped,
    TResult? Function()? starting,
    TResult? Function()? started,
    TResult? Function()? stopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SingboxAlert? alert, String? message)? stopped,
    TResult Function()? starting,
    TResult Function()? started,
    TResult Function()? stopping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingboxStopped value) stopped,
    required TResult Function(SingboxStarting value) starting,
    required TResult Function(SingboxStarted value) started,
    required TResult Function(SingboxStopping value) stopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingboxStopped value)? stopped,
    TResult? Function(SingboxStarting value)? starting,
    TResult? Function(SingboxStarted value)? started,
    TResult? Function(SingboxStopping value)? stopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingboxStopped value)? stopped,
    TResult Function(SingboxStarting value)? starting,
    TResult Function(SingboxStarted value)? started,
    TResult Function(SingboxStopping value)? stopping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingboxStatusCopyWith<$Res> {
  factory $SingboxStatusCopyWith(
          SingboxStatus value, $Res Function(SingboxStatus) then) =
      _$SingboxStatusCopyWithImpl<$Res, SingboxStatus>;
}

/// @nodoc
class _$SingboxStatusCopyWithImpl<$Res, $Val extends SingboxStatus>
    implements $SingboxStatusCopyWith<$Res> {
  _$SingboxStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingboxStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SingboxStoppedImplCopyWith<$Res> {
  factory _$$SingboxStoppedImplCopyWith(_$SingboxStoppedImpl value,
          $Res Function(_$SingboxStoppedImpl) then) =
      __$$SingboxStoppedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SingboxAlert? alert, String? message});
}

/// @nodoc
class __$$SingboxStoppedImplCopyWithImpl<$Res>
    extends _$SingboxStatusCopyWithImpl<$Res, _$SingboxStoppedImpl>
    implements _$$SingboxStoppedImplCopyWith<$Res> {
  __$$SingboxStoppedImplCopyWithImpl(
      _$SingboxStoppedImpl _value, $Res Function(_$SingboxStoppedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingboxStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alert = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SingboxStoppedImpl(
      alert: freezed == alert
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as SingboxAlert?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SingboxStoppedImpl extends SingboxStopped {
  const _$SingboxStoppedImpl({this.alert, this.message}) : super._();

  @override
  final SingboxAlert? alert;
  @override
  final String? message;

  @override
  String toString() {
    return 'SingboxStatus.stopped(alert: $alert, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingboxStoppedImpl &&
            (identical(other.alert, alert) || other.alert == alert) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alert, message);

  /// Create a copy of SingboxStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingboxStoppedImplCopyWith<_$SingboxStoppedImpl> get copyWith =>
      __$$SingboxStoppedImplCopyWithImpl<_$SingboxStoppedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SingboxAlert? alert, String? message) stopped,
    required TResult Function() starting,
    required TResult Function() started,
    required TResult Function() stopping,
  }) {
    return stopped(alert, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SingboxAlert? alert, String? message)? stopped,
    TResult? Function()? starting,
    TResult? Function()? started,
    TResult? Function()? stopping,
  }) {
    return stopped?.call(alert, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SingboxAlert? alert, String? message)? stopped,
    TResult Function()? starting,
    TResult Function()? started,
    TResult Function()? stopping,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(alert, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingboxStopped value) stopped,
    required TResult Function(SingboxStarting value) starting,
    required TResult Function(SingboxStarted value) started,
    required TResult Function(SingboxStopping value) stopping,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingboxStopped value)? stopped,
    TResult? Function(SingboxStarting value)? starting,
    TResult? Function(SingboxStarted value)? started,
    TResult? Function(SingboxStopping value)? stopping,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingboxStopped value)? stopped,
    TResult Function(SingboxStarting value)? starting,
    TResult Function(SingboxStarted value)? started,
    TResult Function(SingboxStopping value)? stopping,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class SingboxStopped extends SingboxStatus {
  const factory SingboxStopped(
      {final SingboxAlert? alert,
      final String? message}) = _$SingboxStoppedImpl;
  const SingboxStopped._() : super._();

  SingboxAlert? get alert;
  String? get message;

  /// Create a copy of SingboxStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingboxStoppedImplCopyWith<_$SingboxStoppedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingboxStartingImplCopyWith<$Res> {
  factory _$$SingboxStartingImplCopyWith(_$SingboxStartingImpl value,
          $Res Function(_$SingboxStartingImpl) then) =
      __$$SingboxStartingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SingboxStartingImplCopyWithImpl<$Res>
    extends _$SingboxStatusCopyWithImpl<$Res, _$SingboxStartingImpl>
    implements _$$SingboxStartingImplCopyWith<$Res> {
  __$$SingboxStartingImplCopyWithImpl(
      _$SingboxStartingImpl _value, $Res Function(_$SingboxStartingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingboxStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SingboxStartingImpl extends SingboxStarting {
  const _$SingboxStartingImpl() : super._();

  @override
  String toString() {
    return 'SingboxStatus.starting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SingboxStartingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SingboxAlert? alert, String? message) stopped,
    required TResult Function() starting,
    required TResult Function() started,
    required TResult Function() stopping,
  }) {
    return starting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SingboxAlert? alert, String? message)? stopped,
    TResult? Function()? starting,
    TResult? Function()? started,
    TResult? Function()? stopping,
  }) {
    return starting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SingboxAlert? alert, String? message)? stopped,
    TResult Function()? starting,
    TResult Function()? started,
    TResult Function()? stopping,
    required TResult orElse(),
  }) {
    if (starting != null) {
      return starting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingboxStopped value) stopped,
    required TResult Function(SingboxStarting value) starting,
    required TResult Function(SingboxStarted value) started,
    required TResult Function(SingboxStopping value) stopping,
  }) {
    return starting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingboxStopped value)? stopped,
    TResult? Function(SingboxStarting value)? starting,
    TResult? Function(SingboxStarted value)? started,
    TResult? Function(SingboxStopping value)? stopping,
  }) {
    return starting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingboxStopped value)? stopped,
    TResult Function(SingboxStarting value)? starting,
    TResult Function(SingboxStarted value)? started,
    TResult Function(SingboxStopping value)? stopping,
    required TResult orElse(),
  }) {
    if (starting != null) {
      return starting(this);
    }
    return orElse();
  }
}

abstract class SingboxStarting extends SingboxStatus {
  const factory SingboxStarting() = _$SingboxStartingImpl;
  const SingboxStarting._() : super._();
}

/// @nodoc
abstract class _$$SingboxStartedImplCopyWith<$Res> {
  factory _$$SingboxStartedImplCopyWith(_$SingboxStartedImpl value,
          $Res Function(_$SingboxStartedImpl) then) =
      __$$SingboxStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SingboxStartedImplCopyWithImpl<$Res>
    extends _$SingboxStatusCopyWithImpl<$Res, _$SingboxStartedImpl>
    implements _$$SingboxStartedImplCopyWith<$Res> {
  __$$SingboxStartedImplCopyWithImpl(
      _$SingboxStartedImpl _value, $Res Function(_$SingboxStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingboxStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SingboxStartedImpl extends SingboxStarted {
  const _$SingboxStartedImpl() : super._();

  @override
  String toString() {
    return 'SingboxStatus.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SingboxStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SingboxAlert? alert, String? message) stopped,
    required TResult Function() starting,
    required TResult Function() started,
    required TResult Function() stopping,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SingboxAlert? alert, String? message)? stopped,
    TResult? Function()? starting,
    TResult? Function()? started,
    TResult? Function()? stopping,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SingboxAlert? alert, String? message)? stopped,
    TResult Function()? starting,
    TResult Function()? started,
    TResult Function()? stopping,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingboxStopped value) stopped,
    required TResult Function(SingboxStarting value) starting,
    required TResult Function(SingboxStarted value) started,
    required TResult Function(SingboxStopping value) stopping,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingboxStopped value)? stopped,
    TResult? Function(SingboxStarting value)? starting,
    TResult? Function(SingboxStarted value)? started,
    TResult? Function(SingboxStopping value)? stopping,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingboxStopped value)? stopped,
    TResult Function(SingboxStarting value)? starting,
    TResult Function(SingboxStarted value)? started,
    TResult Function(SingboxStopping value)? stopping,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class SingboxStarted extends SingboxStatus {
  const factory SingboxStarted() = _$SingboxStartedImpl;
  const SingboxStarted._() : super._();
}

/// @nodoc
abstract class _$$SingboxStoppingImplCopyWith<$Res> {
  factory _$$SingboxStoppingImplCopyWith(_$SingboxStoppingImpl value,
          $Res Function(_$SingboxStoppingImpl) then) =
      __$$SingboxStoppingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SingboxStoppingImplCopyWithImpl<$Res>
    extends _$SingboxStatusCopyWithImpl<$Res, _$SingboxStoppingImpl>
    implements _$$SingboxStoppingImplCopyWith<$Res> {
  __$$SingboxStoppingImplCopyWithImpl(
      _$SingboxStoppingImpl _value, $Res Function(_$SingboxStoppingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingboxStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SingboxStoppingImpl extends SingboxStopping {
  const _$SingboxStoppingImpl() : super._();

  @override
  String toString() {
    return 'SingboxStatus.stopping()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SingboxStoppingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SingboxAlert? alert, String? message) stopped,
    required TResult Function() starting,
    required TResult Function() started,
    required TResult Function() stopping,
  }) {
    return stopping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SingboxAlert? alert, String? message)? stopped,
    TResult? Function()? starting,
    TResult? Function()? started,
    TResult? Function()? stopping,
  }) {
    return stopping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SingboxAlert? alert, String? message)? stopped,
    TResult Function()? starting,
    TResult Function()? started,
    TResult Function()? stopping,
    required TResult orElse(),
  }) {
    if (stopping != null) {
      return stopping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingboxStopped value) stopped,
    required TResult Function(SingboxStarting value) starting,
    required TResult Function(SingboxStarted value) started,
    required TResult Function(SingboxStopping value) stopping,
  }) {
    return stopping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingboxStopped value)? stopped,
    TResult? Function(SingboxStarting value)? starting,
    TResult? Function(SingboxStarted value)? started,
    TResult? Function(SingboxStopping value)? stopping,
  }) {
    return stopping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingboxStopped value)? stopped,
    TResult Function(SingboxStarting value)? starting,
    TResult Function(SingboxStarted value)? started,
    TResult Function(SingboxStopping value)? stopping,
    required TResult orElse(),
  }) {
    if (stopping != null) {
      return stopping(this);
    }
    return orElse();
  }
}

abstract class SingboxStopping extends SingboxStatus {
  const factory SingboxStopping() = _$SingboxStoppingImpl;
  const SingboxStopping._() : super._();
}
