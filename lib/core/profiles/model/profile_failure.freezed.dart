// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() notFound,
    required TResult Function() invalidUrl,
    required TResult Function(String? message) invalidConfig,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? invalidUrl,
    TResult? Function(String? message)? invalidConfig,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? notFound,
    TResult Function()? invalidUrl,
    TResult Function(String? message)? invalidConfig,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileUnexpectedFailure value) unexpected,
    required TResult Function(ProfileNotFoundFailure value) notFound,
    required TResult Function(ProfileInvalidUrlFailure value) invalidUrl,
    required TResult Function(ProfileInvalidConfigFailure value) invalidConfig,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileUnexpectedFailure value)? unexpected,
    TResult? Function(ProfileNotFoundFailure value)? notFound,
    TResult? Function(ProfileInvalidUrlFailure value)? invalidUrl,
    TResult? Function(ProfileInvalidConfigFailure value)? invalidConfig,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileUnexpectedFailure value)? unexpected,
    TResult Function(ProfileNotFoundFailure value)? notFound,
    TResult Function(ProfileInvalidUrlFailure value)? invalidUrl,
    TResult Function(ProfileInvalidConfigFailure value)? invalidConfig,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFailureCopyWith<$Res> {
  factory $ProfileFailureCopyWith(
          ProfileFailure value, $Res Function(ProfileFailure) then) =
      _$ProfileFailureCopyWithImpl<$Res, ProfileFailure>;
}

/// @nodoc
class _$ProfileFailureCopyWithImpl<$Res, $Val extends ProfileFailure>
    implements $ProfileFailureCopyWith<$Res> {
  _$ProfileFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileUnexpectedFailureImplCopyWith<$Res> {
  factory _$$ProfileUnexpectedFailureImplCopyWith(
          _$ProfileUnexpectedFailureImpl value,
          $Res Function(_$ProfileUnexpectedFailureImpl) then) =
      __$$ProfileUnexpectedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$ProfileUnexpectedFailureImplCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res, _$ProfileUnexpectedFailureImpl>
    implements _$$ProfileUnexpectedFailureImplCopyWith<$Res> {
  __$$ProfileUnexpectedFailureImplCopyWithImpl(
      _$ProfileUnexpectedFailureImpl _value,
      $Res Function(_$ProfileUnexpectedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ProfileUnexpectedFailureImpl(
      freezed == error ? _value.error : error,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ProfileUnexpectedFailureImpl extends ProfileUnexpectedFailure
    with UnexpectedFailure {
  const _$ProfileUnexpectedFailureImpl([this.error, this.stackTrace])
      : super._();

  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ProfileFailure.unexpected(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUnexpectedFailureImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of ProfileFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUnexpectedFailureImplCopyWith<_$ProfileUnexpectedFailureImpl>
      get copyWith => __$$ProfileUnexpectedFailureImplCopyWithImpl<
          _$ProfileUnexpectedFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() notFound,
    required TResult Function() invalidUrl,
    required TResult Function(String? message) invalidConfig,
  }) {
    return unexpected(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? invalidUrl,
    TResult? Function(String? message)? invalidConfig,
  }) {
    return unexpected?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? notFound,
    TResult Function()? invalidUrl,
    TResult Function(String? message)? invalidConfig,
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
    required TResult Function(ProfileUnexpectedFailure value) unexpected,
    required TResult Function(ProfileNotFoundFailure value) notFound,
    required TResult Function(ProfileInvalidUrlFailure value) invalidUrl,
    required TResult Function(ProfileInvalidConfigFailure value) invalidConfig,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileUnexpectedFailure value)? unexpected,
    TResult? Function(ProfileNotFoundFailure value)? notFound,
    TResult? Function(ProfileInvalidUrlFailure value)? invalidUrl,
    TResult? Function(ProfileInvalidConfigFailure value)? invalidConfig,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileUnexpectedFailure value)? unexpected,
    TResult Function(ProfileNotFoundFailure value)? notFound,
    TResult Function(ProfileInvalidUrlFailure value)? invalidUrl,
    TResult Function(ProfileInvalidConfigFailure value)? invalidConfig,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class ProfileUnexpectedFailure extends ProfileFailure
    implements UnexpectedFailure {
  const factory ProfileUnexpectedFailure(
      [final Object? error,
      final StackTrace? stackTrace]) = _$ProfileUnexpectedFailureImpl;
  const ProfileUnexpectedFailure._() : super._();

  Object? get error;
  StackTrace? get stackTrace;

  /// Create a copy of ProfileFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileUnexpectedFailureImplCopyWith<_$ProfileUnexpectedFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileNotFoundFailureImplCopyWith<$Res> {
  factory _$$ProfileNotFoundFailureImplCopyWith(
          _$ProfileNotFoundFailureImpl value,
          $Res Function(_$ProfileNotFoundFailureImpl) then) =
      __$$ProfileNotFoundFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileNotFoundFailureImplCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res, _$ProfileNotFoundFailureImpl>
    implements _$$ProfileNotFoundFailureImplCopyWith<$Res> {
  __$$ProfileNotFoundFailureImplCopyWithImpl(
      _$ProfileNotFoundFailureImpl _value,
      $Res Function(_$ProfileNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileNotFoundFailureImpl extends ProfileNotFoundFailure {
  const _$ProfileNotFoundFailureImpl() : super._();

  @override
  String toString() {
    return 'ProfileFailure.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileNotFoundFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() notFound,
    required TResult Function() invalidUrl,
    required TResult Function(String? message) invalidConfig,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? invalidUrl,
    TResult? Function(String? message)? invalidConfig,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? notFound,
    TResult Function()? invalidUrl,
    TResult Function(String? message)? invalidConfig,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileUnexpectedFailure value) unexpected,
    required TResult Function(ProfileNotFoundFailure value) notFound,
    required TResult Function(ProfileInvalidUrlFailure value) invalidUrl,
    required TResult Function(ProfileInvalidConfigFailure value) invalidConfig,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileUnexpectedFailure value)? unexpected,
    TResult? Function(ProfileNotFoundFailure value)? notFound,
    TResult? Function(ProfileInvalidUrlFailure value)? invalidUrl,
    TResult? Function(ProfileInvalidConfigFailure value)? invalidConfig,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileUnexpectedFailure value)? unexpected,
    TResult Function(ProfileNotFoundFailure value)? notFound,
    TResult Function(ProfileInvalidUrlFailure value)? invalidUrl,
    TResult Function(ProfileInvalidConfigFailure value)? invalidConfig,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class ProfileNotFoundFailure extends ProfileFailure {
  const factory ProfileNotFoundFailure() = _$ProfileNotFoundFailureImpl;
  const ProfileNotFoundFailure._() : super._();
}

/// @nodoc
abstract class _$$ProfileInvalidUrlFailureImplCopyWith<$Res> {
  factory _$$ProfileInvalidUrlFailureImplCopyWith(
          _$ProfileInvalidUrlFailureImpl value,
          $Res Function(_$ProfileInvalidUrlFailureImpl) then) =
      __$$ProfileInvalidUrlFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileInvalidUrlFailureImplCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res, _$ProfileInvalidUrlFailureImpl>
    implements _$$ProfileInvalidUrlFailureImplCopyWith<$Res> {
  __$$ProfileInvalidUrlFailureImplCopyWithImpl(
      _$ProfileInvalidUrlFailureImpl _value,
      $Res Function(_$ProfileInvalidUrlFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileInvalidUrlFailureImpl extends ProfileInvalidUrlFailure
    with ExpectedFailure {
  const _$ProfileInvalidUrlFailureImpl() : super._();

  @override
  String toString() {
    return 'ProfileFailure.invalidUrl()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInvalidUrlFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() notFound,
    required TResult Function() invalidUrl,
    required TResult Function(String? message) invalidConfig,
  }) {
    return invalidUrl();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? invalidUrl,
    TResult? Function(String? message)? invalidConfig,
  }) {
    return invalidUrl?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? notFound,
    TResult Function()? invalidUrl,
    TResult Function(String? message)? invalidConfig,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileUnexpectedFailure value) unexpected,
    required TResult Function(ProfileNotFoundFailure value) notFound,
    required TResult Function(ProfileInvalidUrlFailure value) invalidUrl,
    required TResult Function(ProfileInvalidConfigFailure value) invalidConfig,
  }) {
    return invalidUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileUnexpectedFailure value)? unexpected,
    TResult? Function(ProfileNotFoundFailure value)? notFound,
    TResult? Function(ProfileInvalidUrlFailure value)? invalidUrl,
    TResult? Function(ProfileInvalidConfigFailure value)? invalidConfig,
  }) {
    return invalidUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileUnexpectedFailure value)? unexpected,
    TResult Function(ProfileNotFoundFailure value)? notFound,
    TResult Function(ProfileInvalidUrlFailure value)? invalidUrl,
    TResult Function(ProfileInvalidConfigFailure value)? invalidConfig,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl(this);
    }
    return orElse();
  }
}

abstract class ProfileInvalidUrlFailure extends ProfileFailure
    implements ExpectedFailure {
  const factory ProfileInvalidUrlFailure() = _$ProfileInvalidUrlFailureImpl;
  const ProfileInvalidUrlFailure._() : super._();
}

/// @nodoc
abstract class _$$ProfileInvalidConfigFailureImplCopyWith<$Res> {
  factory _$$ProfileInvalidConfigFailureImplCopyWith(
          _$ProfileInvalidConfigFailureImpl value,
          $Res Function(_$ProfileInvalidConfigFailureImpl) then) =
      __$$ProfileInvalidConfigFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ProfileInvalidConfigFailureImplCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res,
        _$ProfileInvalidConfigFailureImpl>
    implements _$$ProfileInvalidConfigFailureImplCopyWith<$Res> {
  __$$ProfileInvalidConfigFailureImplCopyWithImpl(
      _$ProfileInvalidConfigFailureImpl _value,
      $Res Function(_$ProfileInvalidConfigFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ProfileInvalidConfigFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfileInvalidConfigFailureImpl extends ProfileInvalidConfigFailure
    with ExpectedFailure {
  const _$ProfileInvalidConfigFailureImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'ProfileFailure.invalidConfig(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInvalidConfigFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProfileFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileInvalidConfigFailureImplCopyWith<_$ProfileInvalidConfigFailureImpl>
      get copyWith => __$$ProfileInvalidConfigFailureImplCopyWithImpl<
          _$ProfileInvalidConfigFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() notFound,
    required TResult Function() invalidUrl,
    required TResult Function(String? message) invalidConfig,
  }) {
    return invalidConfig(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? invalidUrl,
    TResult? Function(String? message)? invalidConfig,
  }) {
    return invalidConfig?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? notFound,
    TResult Function()? invalidUrl,
    TResult Function(String? message)? invalidConfig,
    required TResult orElse(),
  }) {
    if (invalidConfig != null) {
      return invalidConfig(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileUnexpectedFailure value) unexpected,
    required TResult Function(ProfileNotFoundFailure value) notFound,
    required TResult Function(ProfileInvalidUrlFailure value) invalidUrl,
    required TResult Function(ProfileInvalidConfigFailure value) invalidConfig,
  }) {
    return invalidConfig(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileUnexpectedFailure value)? unexpected,
    TResult? Function(ProfileNotFoundFailure value)? notFound,
    TResult? Function(ProfileInvalidUrlFailure value)? invalidUrl,
    TResult? Function(ProfileInvalidConfigFailure value)? invalidConfig,
  }) {
    return invalidConfig?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileUnexpectedFailure value)? unexpected,
    TResult Function(ProfileNotFoundFailure value)? notFound,
    TResult Function(ProfileInvalidUrlFailure value)? invalidUrl,
    TResult Function(ProfileInvalidConfigFailure value)? invalidConfig,
    required TResult orElse(),
  }) {
    if (invalidConfig != null) {
      return invalidConfig(this);
    }
    return orElse();
  }
}

abstract class ProfileInvalidConfigFailure extends ProfileFailure
    implements ExpectedFailure {
  const factory ProfileInvalidConfigFailure([final String? message]) =
      _$ProfileInvalidConfigFailureImpl;
  const ProfileInvalidConfigFailure._() : super._();

  String? get message;

  /// Create a copy of ProfileFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileInvalidConfigFailureImplCopyWith<_$ProfileInvalidConfigFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
