// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mutation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MutationState<F extends Failure> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Failure failure) failure,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Failure failure)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MutationInitial<F> value) initial,
    required TResult Function(MutationInProgress<F> value) inProgress,
    required TResult Function(MutationFailure<F> value) failure,
    required TResult Function(MutationSuccess<F> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MutationInitial<F> value)? initial,
    TResult? Function(MutationInProgress<F> value)? inProgress,
    TResult? Function(MutationFailure<F> value)? failure,
    TResult? Function(MutationSuccess<F> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MutationInitial<F> value)? initial,
    TResult Function(MutationInProgress<F> value)? inProgress,
    TResult Function(MutationFailure<F> value)? failure,
    TResult Function(MutationSuccess<F> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MutationStateCopyWith<F extends Failure, $Res> {
  factory $MutationStateCopyWith(
          MutationState<F> value, $Res Function(MutationState<F>) then) =
      _$MutationStateCopyWithImpl<F, $Res, MutationState<F>>;
}

/// @nodoc
class _$MutationStateCopyWithImpl<F extends Failure, $Res,
    $Val extends MutationState<F>> implements $MutationStateCopyWith<F, $Res> {
  _$MutationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MutationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MutationInitialImplCopyWith<F extends Failure, $Res> {
  factory _$$MutationInitialImplCopyWith(_$MutationInitialImpl<F> value,
          $Res Function(_$MutationInitialImpl<F>) then) =
      __$$MutationInitialImplCopyWithImpl<F, $Res>;
}

/// @nodoc
class __$$MutationInitialImplCopyWithImpl<F extends Failure, $Res>
    extends _$MutationStateCopyWithImpl<F, $Res, _$MutationInitialImpl<F>>
    implements _$$MutationInitialImplCopyWith<F, $Res> {
  __$$MutationInitialImplCopyWithImpl(_$MutationInitialImpl<F> _value,
      $Res Function(_$MutationInitialImpl<F>) _then)
      : super(_value, _then);

  /// Create a copy of MutationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MutationInitialImpl<F extends Failure> extends MutationInitial<F> {
  const _$MutationInitialImpl() : super._();

  @override
  String toString() {
    return 'MutationState<$F>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MutationInitialImpl<F>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Failure failure) failure,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Failure failure)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MutationInitial<F> value) initial,
    required TResult Function(MutationInProgress<F> value) inProgress,
    required TResult Function(MutationFailure<F> value) failure,
    required TResult Function(MutationSuccess<F> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MutationInitial<F> value)? initial,
    TResult? Function(MutationInProgress<F> value)? inProgress,
    TResult? Function(MutationFailure<F> value)? failure,
    TResult? Function(MutationSuccess<F> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MutationInitial<F> value)? initial,
    TResult Function(MutationInProgress<F> value)? inProgress,
    TResult Function(MutationFailure<F> value)? failure,
    TResult Function(MutationSuccess<F> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MutationInitial<F extends Failure> extends MutationState<F> {
  const factory MutationInitial() = _$MutationInitialImpl<F>;
  const MutationInitial._() : super._();
}

/// @nodoc
abstract class _$$MutationInProgressImplCopyWith<F extends Failure, $Res> {
  factory _$$MutationInProgressImplCopyWith(_$MutationInProgressImpl<F> value,
          $Res Function(_$MutationInProgressImpl<F>) then) =
      __$$MutationInProgressImplCopyWithImpl<F, $Res>;
}

/// @nodoc
class __$$MutationInProgressImplCopyWithImpl<F extends Failure, $Res>
    extends _$MutationStateCopyWithImpl<F, $Res, _$MutationInProgressImpl<F>>
    implements _$$MutationInProgressImplCopyWith<F, $Res> {
  __$$MutationInProgressImplCopyWithImpl(_$MutationInProgressImpl<F> _value,
      $Res Function(_$MutationInProgressImpl<F>) _then)
      : super(_value, _then);

  /// Create a copy of MutationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MutationInProgressImpl<F extends Failure>
    extends MutationInProgress<F> {
  const _$MutationInProgressImpl() : super._();

  @override
  String toString() {
    return 'MutationState<$F>.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MutationInProgressImpl<F>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Failure failure) failure,
    required TResult Function() success,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? success,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Failure failure)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MutationInitial<F> value) initial,
    required TResult Function(MutationInProgress<F> value) inProgress,
    required TResult Function(MutationFailure<F> value) failure,
    required TResult Function(MutationSuccess<F> value) success,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MutationInitial<F> value)? initial,
    TResult? Function(MutationInProgress<F> value)? inProgress,
    TResult? Function(MutationFailure<F> value)? failure,
    TResult? Function(MutationSuccess<F> value)? success,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MutationInitial<F> value)? initial,
    TResult Function(MutationInProgress<F> value)? inProgress,
    TResult Function(MutationFailure<F> value)? failure,
    TResult Function(MutationSuccess<F> value)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class MutationInProgress<F extends Failure> extends MutationState<F> {
  const factory MutationInProgress() = _$MutationInProgressImpl<F>;
  const MutationInProgress._() : super._();
}

/// @nodoc
abstract class _$$MutationFailureImplCopyWith<F extends Failure, $Res> {
  factory _$$MutationFailureImplCopyWith(_$MutationFailureImpl<F> value,
          $Res Function(_$MutationFailureImpl<F>) then) =
      __$$MutationFailureImplCopyWithImpl<F, $Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$MutationFailureImplCopyWithImpl<F extends Failure, $Res>
    extends _$MutationStateCopyWithImpl<F, $Res, _$MutationFailureImpl<F>>
    implements _$$MutationFailureImplCopyWith<F, $Res> {
  __$$MutationFailureImplCopyWithImpl(_$MutationFailureImpl<F> _value,
      $Res Function(_$MutationFailureImpl<F>) _then)
      : super(_value, _then);

  /// Create a copy of MutationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$MutationFailureImpl<F>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$MutationFailureImpl<F extends Failure> extends MutationFailure<F> {
  const _$MutationFailureImpl(this.failure) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MutationState<$F>.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MutationFailureImpl<F> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of MutationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MutationFailureImplCopyWith<F, _$MutationFailureImpl<F>> get copyWith =>
      __$$MutationFailureImplCopyWithImpl<F, _$MutationFailureImpl<F>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Failure failure) failure,
    required TResult Function() success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Failure failure)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MutationInitial<F> value) initial,
    required TResult Function(MutationInProgress<F> value) inProgress,
    required TResult Function(MutationFailure<F> value) failure,
    required TResult Function(MutationSuccess<F> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MutationInitial<F> value)? initial,
    TResult? Function(MutationInProgress<F> value)? inProgress,
    TResult? Function(MutationFailure<F> value)? failure,
    TResult? Function(MutationSuccess<F> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MutationInitial<F> value)? initial,
    TResult Function(MutationInProgress<F> value)? inProgress,
    TResult Function(MutationFailure<F> value)? failure,
    TResult Function(MutationSuccess<F> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class MutationFailure<F extends Failure> extends MutationState<F> {
  const factory MutationFailure(final Failure failure) =
      _$MutationFailureImpl<F>;
  const MutationFailure._() : super._();

  Failure get failure;

  /// Create a copy of MutationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MutationFailureImplCopyWith<F, _$MutationFailureImpl<F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MutationSuccessImplCopyWith<F extends Failure, $Res> {
  factory _$$MutationSuccessImplCopyWith(_$MutationSuccessImpl<F> value,
          $Res Function(_$MutationSuccessImpl<F>) then) =
      __$$MutationSuccessImplCopyWithImpl<F, $Res>;
}

/// @nodoc
class __$$MutationSuccessImplCopyWithImpl<F extends Failure, $Res>
    extends _$MutationStateCopyWithImpl<F, $Res, _$MutationSuccessImpl<F>>
    implements _$$MutationSuccessImplCopyWith<F, $Res> {
  __$$MutationSuccessImplCopyWithImpl(_$MutationSuccessImpl<F> _value,
      $Res Function(_$MutationSuccessImpl<F>) _then)
      : super(_value, _then);

  /// Create a copy of MutationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MutationSuccessImpl<F extends Failure> extends MutationSuccess<F> {
  const _$MutationSuccessImpl() : super._();

  @override
  String toString() {
    return 'MutationState<$F>.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MutationSuccessImpl<F>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Failure failure) failure,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Failure failure)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MutationInitial<F> value) initial,
    required TResult Function(MutationInProgress<F> value) inProgress,
    required TResult Function(MutationFailure<F> value) failure,
    required TResult Function(MutationSuccess<F> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MutationInitial<F> value)? initial,
    TResult? Function(MutationInProgress<F> value)? inProgress,
    TResult? Function(MutationFailure<F> value)? failure,
    TResult? Function(MutationSuccess<F> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MutationInitial<F> value)? initial,
    TResult Function(MutationInProgress<F> value)? inProgress,
    TResult Function(MutationFailure<F> value)? failure,
    TResult Function(MutationSuccess<F> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MutationSuccess<F extends Failure> extends MutationState<F> {
  const factory MutationSuccess() = _$MutationSuccessImpl<F>;
  const MutationSuccess._() : super._();
}
