// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mitm_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MitmFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() notFound,
    required TResult Function() invalidUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? invalidUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? notFound,
    TResult Function()? invalidUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MitmUnexpectedFailure value) unexpected,
    required TResult Function(MitmNotFoundFailure value) notFound,
    required TResult Function(MitmInvalidUrlFailure value) invalidUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MitmUnexpectedFailure value)? unexpected,
    TResult? Function(MitmNotFoundFailure value)? notFound,
    TResult? Function(MitmInvalidUrlFailure value)? invalidUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MitmUnexpectedFailure value)? unexpected,
    TResult Function(MitmNotFoundFailure value)? notFound,
    TResult Function(MitmInvalidUrlFailure value)? invalidUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MitmFailureCopyWith<$Res> {
  factory $MitmFailureCopyWith(
          MitmFailure value, $Res Function(MitmFailure) then) =
      _$MitmFailureCopyWithImpl<$Res, MitmFailure>;
}

/// @nodoc
class _$MitmFailureCopyWithImpl<$Res, $Val extends MitmFailure>
    implements $MitmFailureCopyWith<$Res> {
  _$MitmFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MitmFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MitmUnexpectedFailureImplCopyWith<$Res> {
  factory _$$MitmUnexpectedFailureImplCopyWith(
          _$MitmUnexpectedFailureImpl value,
          $Res Function(_$MitmUnexpectedFailureImpl) then) =
      __$$MitmUnexpectedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$MitmUnexpectedFailureImplCopyWithImpl<$Res>
    extends _$MitmFailureCopyWithImpl<$Res, _$MitmUnexpectedFailureImpl>
    implements _$$MitmUnexpectedFailureImplCopyWith<$Res> {
  __$$MitmUnexpectedFailureImplCopyWithImpl(_$MitmUnexpectedFailureImpl _value,
      $Res Function(_$MitmUnexpectedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MitmFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$MitmUnexpectedFailureImpl(
      freezed == error ? _value.error : error,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$MitmUnexpectedFailureImpl extends MitmUnexpectedFailure
    with UnexpectedFailure {
  const _$MitmUnexpectedFailureImpl([this.error, this.stackTrace]) : super._();

  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'MitmFailure.unexpected(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MitmUnexpectedFailureImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of MitmFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MitmUnexpectedFailureImplCopyWith<_$MitmUnexpectedFailureImpl>
      get copyWith => __$$MitmUnexpectedFailureImplCopyWithImpl<
          _$MitmUnexpectedFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() notFound,
    required TResult Function() invalidUrl,
  }) {
    return unexpected(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? invalidUrl,
  }) {
    return unexpected?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? notFound,
    TResult Function()? invalidUrl,
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
    required TResult Function(MitmUnexpectedFailure value) unexpected,
    required TResult Function(MitmNotFoundFailure value) notFound,
    required TResult Function(MitmInvalidUrlFailure value) invalidUrl,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MitmUnexpectedFailure value)? unexpected,
    TResult? Function(MitmNotFoundFailure value)? notFound,
    TResult? Function(MitmInvalidUrlFailure value)? invalidUrl,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MitmUnexpectedFailure value)? unexpected,
    TResult Function(MitmNotFoundFailure value)? notFound,
    TResult Function(MitmInvalidUrlFailure value)? invalidUrl,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class MitmUnexpectedFailure extends MitmFailure
    implements UnexpectedFailure {
  const factory MitmUnexpectedFailure(
      [final Object? error,
      final StackTrace? stackTrace]) = _$MitmUnexpectedFailureImpl;
  const MitmUnexpectedFailure._() : super._();

  Object? get error;
  StackTrace? get stackTrace;

  /// Create a copy of MitmFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MitmUnexpectedFailureImplCopyWith<_$MitmUnexpectedFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MitmNotFoundFailureImplCopyWith<$Res> {
  factory _$$MitmNotFoundFailureImplCopyWith(_$MitmNotFoundFailureImpl value,
          $Res Function(_$MitmNotFoundFailureImpl) then) =
      __$$MitmNotFoundFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MitmNotFoundFailureImplCopyWithImpl<$Res>
    extends _$MitmFailureCopyWithImpl<$Res, _$MitmNotFoundFailureImpl>
    implements _$$MitmNotFoundFailureImplCopyWith<$Res> {
  __$$MitmNotFoundFailureImplCopyWithImpl(_$MitmNotFoundFailureImpl _value,
      $Res Function(_$MitmNotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MitmFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MitmNotFoundFailureImpl extends MitmNotFoundFailure {
  const _$MitmNotFoundFailureImpl() : super._();

  @override
  String toString() {
    return 'MitmFailure.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MitmNotFoundFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() notFound,
    required TResult Function() invalidUrl,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? invalidUrl,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? notFound,
    TResult Function()? invalidUrl,
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
    required TResult Function(MitmUnexpectedFailure value) unexpected,
    required TResult Function(MitmNotFoundFailure value) notFound,
    required TResult Function(MitmInvalidUrlFailure value) invalidUrl,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MitmUnexpectedFailure value)? unexpected,
    TResult? Function(MitmNotFoundFailure value)? notFound,
    TResult? Function(MitmInvalidUrlFailure value)? invalidUrl,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MitmUnexpectedFailure value)? unexpected,
    TResult Function(MitmNotFoundFailure value)? notFound,
    TResult Function(MitmInvalidUrlFailure value)? invalidUrl,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class MitmNotFoundFailure extends MitmFailure {
  const factory MitmNotFoundFailure() = _$MitmNotFoundFailureImpl;
  const MitmNotFoundFailure._() : super._();
}

/// @nodoc
abstract class _$$MitmInvalidUrlFailureImplCopyWith<$Res> {
  factory _$$MitmInvalidUrlFailureImplCopyWith(
          _$MitmInvalidUrlFailureImpl value,
          $Res Function(_$MitmInvalidUrlFailureImpl) then) =
      __$$MitmInvalidUrlFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MitmInvalidUrlFailureImplCopyWithImpl<$Res>
    extends _$MitmFailureCopyWithImpl<$Res, _$MitmInvalidUrlFailureImpl>
    implements _$$MitmInvalidUrlFailureImplCopyWith<$Res> {
  __$$MitmInvalidUrlFailureImplCopyWithImpl(_$MitmInvalidUrlFailureImpl _value,
      $Res Function(_$MitmInvalidUrlFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MitmFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MitmInvalidUrlFailureImpl extends MitmInvalidUrlFailure
    with ExpectedFailure {
  const _$MitmInvalidUrlFailureImpl() : super._();

  @override
  String toString() {
    return 'MitmFailure.invalidUrl()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MitmInvalidUrlFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function() notFound,
    required TResult Function() invalidUrl,
  }) {
    return invalidUrl();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? invalidUrl,
  }) {
    return invalidUrl?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function()? notFound,
    TResult Function()? invalidUrl,
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
    required TResult Function(MitmUnexpectedFailure value) unexpected,
    required TResult Function(MitmNotFoundFailure value) notFound,
    required TResult Function(MitmInvalidUrlFailure value) invalidUrl,
  }) {
    return invalidUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MitmUnexpectedFailure value)? unexpected,
    TResult? Function(MitmNotFoundFailure value)? notFound,
    TResult? Function(MitmInvalidUrlFailure value)? invalidUrl,
  }) {
    return invalidUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MitmUnexpectedFailure value)? unexpected,
    TResult Function(MitmNotFoundFailure value)? notFound,
    TResult Function(MitmInvalidUrlFailure value)? invalidUrl,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl(this);
    }
    return orElse();
  }
}

abstract class MitmInvalidUrlFailure extends MitmFailure
    implements ExpectedFailure {
  const factory MitmInvalidUrlFailure() = _$MitmInvalidUrlFailureImpl;
  const MitmInvalidUrlFailure._() : super._();
}
