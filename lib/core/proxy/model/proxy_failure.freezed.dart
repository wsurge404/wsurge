// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proxy_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProxyFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() serviceNotRunning,
    required TResult Function() unknownIp,
    required TResult Function(Object? error, StackTrace? stackTrace)
        unableToRetrieveIp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? serviceNotRunning,
    TResult? Function()? unknownIp,
    TResult? Function(Object? error, StackTrace? stackTrace)?
        unableToRetrieveIp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? serviceNotRunning,
    TResult Function()? unknownIp,
    TResult Function(Object? error, StackTrace? stackTrace)? unableToRetrieveIp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProxyUnexpectedFailure value) unexpected,
    required TResult Function(ServiceNotRunning value) serviceNotRunning,
    required TResult Function(UnknownIp value) unknownIp,
    required TResult Function(UnableToRetrieveIp value) unableToRetrieveIp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProxyUnexpectedFailure value)? unexpected,
    TResult? Function(ServiceNotRunning value)? serviceNotRunning,
    TResult? Function(UnknownIp value)? unknownIp,
    TResult? Function(UnableToRetrieveIp value)? unableToRetrieveIp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProxyUnexpectedFailure value)? unexpected,
    TResult Function(ServiceNotRunning value)? serviceNotRunning,
    TResult Function(UnknownIp value)? unknownIp,
    TResult Function(UnableToRetrieveIp value)? unableToRetrieveIp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProxyFailureCopyWith<$Res> {
  factory $ProxyFailureCopyWith(
          ProxyFailure value, $Res Function(ProxyFailure) then) =
      _$ProxyFailureCopyWithImpl<$Res, ProxyFailure>;
}

/// @nodoc
class _$ProxyFailureCopyWithImpl<$Res, $Val extends ProxyFailure>
    implements $ProxyFailureCopyWith<$Res> {
  _$ProxyFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProxyFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProxyUnexpectedFailureImplCopyWith<$Res> {
  factory _$$ProxyUnexpectedFailureImplCopyWith(
          _$ProxyUnexpectedFailureImpl value,
          $Res Function(_$ProxyUnexpectedFailureImpl) then) =
      __$$ProxyUnexpectedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$ProxyUnexpectedFailureImplCopyWithImpl<$Res>
    extends _$ProxyFailureCopyWithImpl<$Res, _$ProxyUnexpectedFailureImpl>
    implements _$$ProxyUnexpectedFailureImplCopyWith<$Res> {
  __$$ProxyUnexpectedFailureImplCopyWithImpl(
      _$ProxyUnexpectedFailureImpl _value,
      $Res Function(_$ProxyUnexpectedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProxyFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ProxyUnexpectedFailureImpl(
      freezed == error ? _value.error : error,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ProxyUnexpectedFailureImpl extends ProxyUnexpectedFailure
    with UnexpectedFailure {
  const _$ProxyUnexpectedFailureImpl([this.error, this.stackTrace]) : super._();

  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ProxyFailure.unexpected(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProxyUnexpectedFailureImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of ProxyFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProxyUnexpectedFailureImplCopyWith<_$ProxyUnexpectedFailureImpl>
      get copyWith => __$$ProxyUnexpectedFailureImplCopyWithImpl<
          _$ProxyUnexpectedFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() serviceNotRunning,
    required TResult Function() unknownIp,
    required TResult Function(Object? error, StackTrace? stackTrace)
        unableToRetrieveIp,
  }) {
    return unexpected(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? serviceNotRunning,
    TResult? Function()? unknownIp,
    TResult? Function(Object? error, StackTrace? stackTrace)?
        unableToRetrieveIp,
  }) {
    return unexpected?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? serviceNotRunning,
    TResult Function()? unknownIp,
    TResult Function(Object? error, StackTrace? stackTrace)? unableToRetrieveIp,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProxyUnexpectedFailure value) unexpected,
    required TResult Function(ServiceNotRunning value) serviceNotRunning,
    required TResult Function(UnknownIp value) unknownIp,
    required TResult Function(UnableToRetrieveIp value) unableToRetrieveIp,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProxyUnexpectedFailure value)? unexpected,
    TResult? Function(ServiceNotRunning value)? serviceNotRunning,
    TResult? Function(UnknownIp value)? unknownIp,
    TResult? Function(UnableToRetrieveIp value)? unableToRetrieveIp,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProxyUnexpectedFailure value)? unexpected,
    TResult Function(ServiceNotRunning value)? serviceNotRunning,
    TResult Function(UnknownIp value)? unknownIp,
    TResult Function(UnableToRetrieveIp value)? unableToRetrieveIp,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class ProxyUnexpectedFailure extends ProxyFailure
    implements UnexpectedFailure {
  const factory ProxyUnexpectedFailure(
      [final Object? error,
      final StackTrace? stackTrace]) = _$ProxyUnexpectedFailureImpl;
  const ProxyUnexpectedFailure._() : super._();

  Object? get error;
  StackTrace? get stackTrace;

  /// Create a copy of ProxyFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProxyUnexpectedFailureImplCopyWith<_$ProxyUnexpectedFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceNotRunningImplCopyWith<$Res> {
  factory _$$ServiceNotRunningImplCopyWith(_$ServiceNotRunningImpl value,
          $Res Function(_$ServiceNotRunningImpl) then) =
      __$$ServiceNotRunningImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceNotRunningImplCopyWithImpl<$Res>
    extends _$ProxyFailureCopyWithImpl<$Res, _$ServiceNotRunningImpl>
    implements _$$ServiceNotRunningImplCopyWith<$Res> {
  __$$ServiceNotRunningImplCopyWithImpl(_$ServiceNotRunningImpl _value,
      $Res Function(_$ServiceNotRunningImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProxyFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServiceNotRunningImpl extends ServiceNotRunning with ExpectedFailure {
  const _$ServiceNotRunningImpl() : super._();

  @override
  String toString() {
    return 'ProxyFailure.serviceNotRunning()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServiceNotRunningImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() serviceNotRunning,
    required TResult Function() unknownIp,
    required TResult Function(Object? error, StackTrace? stackTrace)
        unableToRetrieveIp,
  }) {
    return serviceNotRunning();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? serviceNotRunning,
    TResult? Function()? unknownIp,
    TResult? Function(Object? error, StackTrace? stackTrace)?
        unableToRetrieveIp,
  }) {
    return serviceNotRunning?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? serviceNotRunning,
    TResult Function()? unknownIp,
    TResult Function(Object? error, StackTrace? stackTrace)? unableToRetrieveIp,
    required TResult orElse(),
  }) {
    if (serviceNotRunning != null) {
      return serviceNotRunning();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProxyUnexpectedFailure value) unexpected,
    required TResult Function(ServiceNotRunning value) serviceNotRunning,
    required TResult Function(UnknownIp value) unknownIp,
    required TResult Function(UnableToRetrieveIp value) unableToRetrieveIp,
  }) {
    return serviceNotRunning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProxyUnexpectedFailure value)? unexpected,
    TResult? Function(ServiceNotRunning value)? serviceNotRunning,
    TResult? Function(UnknownIp value)? unknownIp,
    TResult? Function(UnableToRetrieveIp value)? unableToRetrieveIp,
  }) {
    return serviceNotRunning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProxyUnexpectedFailure value)? unexpected,
    TResult Function(ServiceNotRunning value)? serviceNotRunning,
    TResult Function(UnknownIp value)? unknownIp,
    TResult Function(UnableToRetrieveIp value)? unableToRetrieveIp,
    required TResult orElse(),
  }) {
    if (serviceNotRunning != null) {
      return serviceNotRunning(this);
    }
    return orElse();
  }
}

abstract class ServiceNotRunning extends ProxyFailure
    implements ExpectedFailure {
  const factory ServiceNotRunning() = _$ServiceNotRunningImpl;
  const ServiceNotRunning._() : super._();
}

/// @nodoc
abstract class _$$UnknownIpImplCopyWith<$Res> {
  factory _$$UnknownIpImplCopyWith(
          _$UnknownIpImpl value, $Res Function(_$UnknownIpImpl) then) =
      __$$UnknownIpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownIpImplCopyWithImpl<$Res>
    extends _$ProxyFailureCopyWithImpl<$Res, _$UnknownIpImpl>
    implements _$$UnknownIpImplCopyWith<$Res> {
  __$$UnknownIpImplCopyWithImpl(
      _$UnknownIpImpl _value, $Res Function(_$UnknownIpImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProxyFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnknownIpImpl extends UnknownIp with ExpectedFailure {
  const _$UnknownIpImpl() : super._();

  @override
  String toString() {
    return 'ProxyFailure.unknownIp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownIpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() serviceNotRunning,
    required TResult Function() unknownIp,
    required TResult Function(Object? error, StackTrace? stackTrace)
        unableToRetrieveIp,
  }) {
    return unknownIp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? serviceNotRunning,
    TResult? Function()? unknownIp,
    TResult? Function(Object? error, StackTrace? stackTrace)?
        unableToRetrieveIp,
  }) {
    return unknownIp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? serviceNotRunning,
    TResult Function()? unknownIp,
    TResult Function(Object? error, StackTrace? stackTrace)? unableToRetrieveIp,
    required TResult orElse(),
  }) {
    if (unknownIp != null) {
      return unknownIp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProxyUnexpectedFailure value) unexpected,
    required TResult Function(ServiceNotRunning value) serviceNotRunning,
    required TResult Function(UnknownIp value) unknownIp,
    required TResult Function(UnableToRetrieveIp value) unableToRetrieveIp,
  }) {
    return unknownIp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProxyUnexpectedFailure value)? unexpected,
    TResult? Function(ServiceNotRunning value)? serviceNotRunning,
    TResult? Function(UnknownIp value)? unknownIp,
    TResult? Function(UnableToRetrieveIp value)? unableToRetrieveIp,
  }) {
    return unknownIp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProxyUnexpectedFailure value)? unexpected,
    TResult Function(ServiceNotRunning value)? serviceNotRunning,
    TResult Function(UnknownIp value)? unknownIp,
    TResult Function(UnableToRetrieveIp value)? unableToRetrieveIp,
    required TResult orElse(),
  }) {
    if (unknownIp != null) {
      return unknownIp(this);
    }
    return orElse();
  }
}

abstract class UnknownIp extends ProxyFailure implements ExpectedFailure {
  const factory UnknownIp() = _$UnknownIpImpl;
  const UnknownIp._() : super._();
}

/// @nodoc
abstract class _$$UnableToRetrieveIpImplCopyWith<$Res> {
  factory _$$UnableToRetrieveIpImplCopyWith(_$UnableToRetrieveIpImpl value,
          $Res Function(_$UnableToRetrieveIpImpl) then) =
      __$$UnableToRetrieveIpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$UnableToRetrieveIpImplCopyWithImpl<$Res>
    extends _$ProxyFailureCopyWithImpl<$Res, _$UnableToRetrieveIpImpl>
    implements _$$UnableToRetrieveIpImplCopyWith<$Res> {
  __$$UnableToRetrieveIpImplCopyWithImpl(_$UnableToRetrieveIpImpl _value,
      $Res Function(_$UnableToRetrieveIpImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProxyFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$UnableToRetrieveIpImpl(
      freezed == error ? _value.error : error,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$UnableToRetrieveIpImpl extends UnableToRetrieveIp
    with ExpectedMeasuredFailure {
  const _$UnableToRetrieveIpImpl([this.error, this.stackTrace]) : super._();

  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ProxyFailure.unableToRetrieveIp(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnableToRetrieveIpImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of ProxyFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnableToRetrieveIpImplCopyWith<_$UnableToRetrieveIpImpl> get copyWith =>
      __$$UnableToRetrieveIpImplCopyWithImpl<_$UnableToRetrieveIpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() serviceNotRunning,
    required TResult Function() unknownIp,
    required TResult Function(Object? error, StackTrace? stackTrace)
        unableToRetrieveIp,
  }) {
    return unableToRetrieveIp(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? serviceNotRunning,
    TResult? Function()? unknownIp,
    TResult? Function(Object? error, StackTrace? stackTrace)?
        unableToRetrieveIp,
  }) {
    return unableToRetrieveIp?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? serviceNotRunning,
    TResult Function()? unknownIp,
    TResult Function(Object? error, StackTrace? stackTrace)? unableToRetrieveIp,
    required TResult orElse(),
  }) {
    if (unableToRetrieveIp != null) {
      return unableToRetrieveIp(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProxyUnexpectedFailure value) unexpected,
    required TResult Function(ServiceNotRunning value) serviceNotRunning,
    required TResult Function(UnknownIp value) unknownIp,
    required TResult Function(UnableToRetrieveIp value) unableToRetrieveIp,
  }) {
    return unableToRetrieveIp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProxyUnexpectedFailure value)? unexpected,
    TResult? Function(ServiceNotRunning value)? serviceNotRunning,
    TResult? Function(UnknownIp value)? unknownIp,
    TResult? Function(UnableToRetrieveIp value)? unableToRetrieveIp,
  }) {
    return unableToRetrieveIp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProxyUnexpectedFailure value)? unexpected,
    TResult Function(ServiceNotRunning value)? serviceNotRunning,
    TResult Function(UnknownIp value)? unknownIp,
    TResult Function(UnableToRetrieveIp value)? unableToRetrieveIp,
    required TResult orElse(),
  }) {
    if (unableToRetrieveIp != null) {
      return unableToRetrieveIp(this);
    }
    return orElse();
  }
}

abstract class UnableToRetrieveIp extends ProxyFailure
    implements ExpectedMeasuredFailure {
  const factory UnableToRetrieveIp(
      [final Object? error,
      final StackTrace? stackTrace]) = _$UnableToRetrieveIpImpl;
  const UnableToRetrieveIp._() : super._();

  Object? get error;
  StackTrace? get stackTrace;

  /// Create a copy of ProxyFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnableToRetrieveIpImplCopyWith<_$UnableToRetrieveIpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
