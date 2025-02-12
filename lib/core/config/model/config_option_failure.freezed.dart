// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config_option_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConfigOptionFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() missingWarp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? missingWarp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? missingWarp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfigOptionUnexpectedFailure value) unexpected,
    required TResult Function(MissingWarpConfigFailure value) missingWarp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfigOptionUnexpectedFailure value)? unexpected,
    TResult? Function(MissingWarpConfigFailure value)? missingWarp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfigOptionUnexpectedFailure value)? unexpected,
    TResult Function(MissingWarpConfigFailure value)? missingWarp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigOptionFailureCopyWith<$Res> {
  factory $ConfigOptionFailureCopyWith(
          ConfigOptionFailure value, $Res Function(ConfigOptionFailure) then) =
      _$ConfigOptionFailureCopyWithImpl<$Res, ConfigOptionFailure>;
}

/// @nodoc
class _$ConfigOptionFailureCopyWithImpl<$Res, $Val extends ConfigOptionFailure>
    implements $ConfigOptionFailureCopyWith<$Res> {
  _$ConfigOptionFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfigOptionFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConfigOptionUnexpectedFailureImplCopyWith<$Res> {
  factory _$$ConfigOptionUnexpectedFailureImplCopyWith(
          _$ConfigOptionUnexpectedFailureImpl value,
          $Res Function(_$ConfigOptionUnexpectedFailureImpl) then) =
      __$$ConfigOptionUnexpectedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$ConfigOptionUnexpectedFailureImplCopyWithImpl<$Res>
    extends _$ConfigOptionFailureCopyWithImpl<$Res,
        _$ConfigOptionUnexpectedFailureImpl>
    implements _$$ConfigOptionUnexpectedFailureImplCopyWith<$Res> {
  __$$ConfigOptionUnexpectedFailureImplCopyWithImpl(
      _$ConfigOptionUnexpectedFailureImpl _value,
      $Res Function(_$ConfigOptionUnexpectedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfigOptionFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ConfigOptionUnexpectedFailureImpl(
      freezed == error ? _value.error : error,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ConfigOptionUnexpectedFailureImpl extends ConfigOptionUnexpectedFailure
    with UnexpectedFailure {
  const _$ConfigOptionUnexpectedFailureImpl([this.error, this.stackTrace])
      : super._();

  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ConfigOptionFailure.unexpected(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigOptionUnexpectedFailureImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of ConfigOptionFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigOptionUnexpectedFailureImplCopyWith<
          _$ConfigOptionUnexpectedFailureImpl>
      get copyWith => __$$ConfigOptionUnexpectedFailureImplCopyWithImpl<
          _$ConfigOptionUnexpectedFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() missingWarp,
  }) {
    return unexpected(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? missingWarp,
  }) {
    return unexpected?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? missingWarp,
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
    required TResult Function(ConfigOptionUnexpectedFailure value) unexpected,
    required TResult Function(MissingWarpConfigFailure value) missingWarp,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfigOptionUnexpectedFailure value)? unexpected,
    TResult? Function(MissingWarpConfigFailure value)? missingWarp,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfigOptionUnexpectedFailure value)? unexpected,
    TResult Function(MissingWarpConfigFailure value)? missingWarp,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class ConfigOptionUnexpectedFailure extends ConfigOptionFailure
    implements UnexpectedFailure {
  const factory ConfigOptionUnexpectedFailure(
      [final Object? error,
      final StackTrace? stackTrace]) = _$ConfigOptionUnexpectedFailureImpl;
  const ConfigOptionUnexpectedFailure._() : super._();

  Object? get error;
  StackTrace? get stackTrace;

  /// Create a copy of ConfigOptionFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfigOptionUnexpectedFailureImplCopyWith<
          _$ConfigOptionUnexpectedFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MissingWarpConfigFailureImplCopyWith<$Res> {
  factory _$$MissingWarpConfigFailureImplCopyWith(
          _$MissingWarpConfigFailureImpl value,
          $Res Function(_$MissingWarpConfigFailureImpl) then) =
      __$$MissingWarpConfigFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MissingWarpConfigFailureImplCopyWithImpl<$Res>
    extends _$ConfigOptionFailureCopyWithImpl<$Res,
        _$MissingWarpConfigFailureImpl>
    implements _$$MissingWarpConfigFailureImplCopyWith<$Res> {
  __$$MissingWarpConfigFailureImplCopyWithImpl(
      _$MissingWarpConfigFailureImpl _value,
      $Res Function(_$MissingWarpConfigFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfigOptionFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MissingWarpConfigFailureImpl extends MissingWarpConfigFailure
    with ExpectedFailure {
  const _$MissingWarpConfigFailureImpl() : super._();

  @override
  String toString() {
    return 'ConfigOptionFailure.missingWarp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissingWarpConfigFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() missingWarp,
  }) {
    return missingWarp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? missingWarp,
  }) {
    return missingWarp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? missingWarp,
    required TResult orElse(),
  }) {
    if (missingWarp != null) {
      return missingWarp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfigOptionUnexpectedFailure value) unexpected,
    required TResult Function(MissingWarpConfigFailure value) missingWarp,
  }) {
    return missingWarp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfigOptionUnexpectedFailure value)? unexpected,
    TResult? Function(MissingWarpConfigFailure value)? missingWarp,
  }) {
    return missingWarp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfigOptionUnexpectedFailure value)? unexpected,
    TResult Function(MissingWarpConfigFailure value)? missingWarp,
    required TResult orElse(),
  }) {
    if (missingWarp != null) {
      return missingWarp(this);
    }
    return orElse();
  }
}

abstract class MissingWarpConfigFailure extends ConfigOptionFailure
    implements ExpectedFailure {
  const factory MissingWarpConfigFailure() = _$MissingWarpConfigFailureImpl;
  const MissingWarpConfigFailure._() : super._();
}
