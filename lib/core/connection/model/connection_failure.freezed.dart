// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectionFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function(String? message) missingVpnPermission,
    required TResult Function(String? message) missingNotificationPermission,
    required TResult Function() missingPrivilege,
    required TResult Function() missingGeoAssets,
    required TResult Function(String? message) invalidConfigOption,
    required TResult Function(String? message) invalidConfig,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function(String? message)? missingVpnPermission,
    TResult? Function(String? message)? missingNotificationPermission,
    TResult? Function()? missingPrivilege,
    TResult? Function()? missingGeoAssets,
    TResult? Function(String? message)? invalidConfigOption,
    TResult? Function(String? message)? invalidConfig,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function(String? message)? missingVpnPermission,
    TResult Function(String? message)? missingNotificationPermission,
    TResult Function()? missingPrivilege,
    TResult Function()? missingGeoAssets,
    TResult Function(String? message)? invalidConfigOption,
    TResult Function(String? message)? invalidConfig,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedConnectionFailure value) unexpected,
    required TResult Function(MissingVpnPermission value) missingVpnPermission,
    required TResult Function(MissingNotificationPermission value)
        missingNotificationPermission,
    required TResult Function(MissingPrivilege value) missingPrivilege,
    required TResult Function(MissingGeoAssets value) missingGeoAssets,
    required TResult Function(InvalidConfigOption value) invalidConfigOption,
    required TResult Function(InvalidConfig value) invalidConfig,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedConnectionFailure value)? unexpected,
    TResult? Function(MissingVpnPermission value)? missingVpnPermission,
    TResult? Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult? Function(MissingPrivilege value)? missingPrivilege,
    TResult? Function(MissingGeoAssets value)? missingGeoAssets,
    TResult? Function(InvalidConfigOption value)? invalidConfigOption,
    TResult? Function(InvalidConfig value)? invalidConfig,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedConnectionFailure value)? unexpected,
    TResult Function(MissingVpnPermission value)? missingVpnPermission,
    TResult Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult Function(MissingPrivilege value)? missingPrivilege,
    TResult Function(MissingGeoAssets value)? missingGeoAssets,
    TResult Function(InvalidConfigOption value)? invalidConfigOption,
    TResult Function(InvalidConfig value)? invalidConfig,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionFailureCopyWith<$Res> {
  factory $ConnectionFailureCopyWith(
          ConnectionFailure value, $Res Function(ConnectionFailure) then) =
      _$ConnectionFailureCopyWithImpl<$Res, ConnectionFailure>;
}

/// @nodoc
class _$ConnectionFailureCopyWithImpl<$Res, $Val extends ConnectionFailure>
    implements $ConnectionFailureCopyWith<$Res> {
  _$ConnectionFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnexpectedConnectionFailureImplCopyWith<$Res> {
  factory _$$UnexpectedConnectionFailureImplCopyWith(
          _$UnexpectedConnectionFailureImpl value,
          $Res Function(_$UnexpectedConnectionFailureImpl) then) =
      __$$UnexpectedConnectionFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$UnexpectedConnectionFailureImplCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res,
        _$UnexpectedConnectionFailureImpl>
    implements _$$UnexpectedConnectionFailureImplCopyWith<$Res> {
  __$$UnexpectedConnectionFailureImplCopyWithImpl(
      _$UnexpectedConnectionFailureImpl _value,
      $Res Function(_$UnexpectedConnectionFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$UnexpectedConnectionFailureImpl(
      freezed == error ? _value.error : error,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$UnexpectedConnectionFailureImpl extends UnexpectedConnectionFailure
    with UnexpectedFailure {
  const _$UnexpectedConnectionFailureImpl([this.error, this.stackTrace])
      : super._();

  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ConnectionFailure.unexpected(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedConnectionFailureImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedConnectionFailureImplCopyWith<_$UnexpectedConnectionFailureImpl>
      get copyWith => __$$UnexpectedConnectionFailureImplCopyWithImpl<
          _$UnexpectedConnectionFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function(String? message) missingVpnPermission,
    required TResult Function(String? message) missingNotificationPermission,
    required TResult Function() missingPrivilege,
    required TResult Function() missingGeoAssets,
    required TResult Function(String? message) invalidConfigOption,
    required TResult Function(String? message) invalidConfig,
  }) {
    return unexpected(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function(String? message)? missingVpnPermission,
    TResult? Function(String? message)? missingNotificationPermission,
    TResult? Function()? missingPrivilege,
    TResult? Function()? missingGeoAssets,
    TResult? Function(String? message)? invalidConfigOption,
    TResult? Function(String? message)? invalidConfig,
  }) {
    return unexpected?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function(String? message)? missingVpnPermission,
    TResult Function(String? message)? missingNotificationPermission,
    TResult Function()? missingPrivilege,
    TResult Function()? missingGeoAssets,
    TResult Function(String? message)? invalidConfigOption,
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
    required TResult Function(UnexpectedConnectionFailure value) unexpected,
    required TResult Function(MissingVpnPermission value) missingVpnPermission,
    required TResult Function(MissingNotificationPermission value)
        missingNotificationPermission,
    required TResult Function(MissingPrivilege value) missingPrivilege,
    required TResult Function(MissingGeoAssets value) missingGeoAssets,
    required TResult Function(InvalidConfigOption value) invalidConfigOption,
    required TResult Function(InvalidConfig value) invalidConfig,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedConnectionFailure value)? unexpected,
    TResult? Function(MissingVpnPermission value)? missingVpnPermission,
    TResult? Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult? Function(MissingPrivilege value)? missingPrivilege,
    TResult? Function(MissingGeoAssets value)? missingGeoAssets,
    TResult? Function(InvalidConfigOption value)? invalidConfigOption,
    TResult? Function(InvalidConfig value)? invalidConfig,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedConnectionFailure value)? unexpected,
    TResult Function(MissingVpnPermission value)? missingVpnPermission,
    TResult Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult Function(MissingPrivilege value)? missingPrivilege,
    TResult Function(MissingGeoAssets value)? missingGeoAssets,
    TResult Function(InvalidConfigOption value)? invalidConfigOption,
    TResult Function(InvalidConfig value)? invalidConfig,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedConnectionFailure extends ConnectionFailure
    implements UnexpectedFailure {
  const factory UnexpectedConnectionFailure(
      [final Object? error,
      final StackTrace? stackTrace]) = _$UnexpectedConnectionFailureImpl;
  const UnexpectedConnectionFailure._() : super._();

  Object? get error;
  StackTrace? get stackTrace;

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedConnectionFailureImplCopyWith<_$UnexpectedConnectionFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MissingVpnPermissionImplCopyWith<$Res> {
  factory _$$MissingVpnPermissionImplCopyWith(_$MissingVpnPermissionImpl value,
          $Res Function(_$MissingVpnPermissionImpl) then) =
      __$$MissingVpnPermissionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$MissingVpnPermissionImplCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res, _$MissingVpnPermissionImpl>
    implements _$$MissingVpnPermissionImplCopyWith<$Res> {
  __$$MissingVpnPermissionImplCopyWithImpl(_$MissingVpnPermissionImpl _value,
      $Res Function(_$MissingVpnPermissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$MissingVpnPermissionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MissingVpnPermissionImpl extends MissingVpnPermission
    with ExpectedMeasuredFailure {
  const _$MissingVpnPermissionImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'ConnectionFailure.missingVpnPermission(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissingVpnPermissionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MissingVpnPermissionImplCopyWith<_$MissingVpnPermissionImpl>
      get copyWith =>
          __$$MissingVpnPermissionImplCopyWithImpl<_$MissingVpnPermissionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function(String? message) missingVpnPermission,
    required TResult Function(String? message) missingNotificationPermission,
    required TResult Function() missingPrivilege,
    required TResult Function() missingGeoAssets,
    required TResult Function(String? message) invalidConfigOption,
    required TResult Function(String? message) invalidConfig,
  }) {
    return missingVpnPermission(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function(String? message)? missingVpnPermission,
    TResult? Function(String? message)? missingNotificationPermission,
    TResult? Function()? missingPrivilege,
    TResult? Function()? missingGeoAssets,
    TResult? Function(String? message)? invalidConfigOption,
    TResult? Function(String? message)? invalidConfig,
  }) {
    return missingVpnPermission?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function(String? message)? missingVpnPermission,
    TResult Function(String? message)? missingNotificationPermission,
    TResult Function()? missingPrivilege,
    TResult Function()? missingGeoAssets,
    TResult Function(String? message)? invalidConfigOption,
    TResult Function(String? message)? invalidConfig,
    required TResult orElse(),
  }) {
    if (missingVpnPermission != null) {
      return missingVpnPermission(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedConnectionFailure value) unexpected,
    required TResult Function(MissingVpnPermission value) missingVpnPermission,
    required TResult Function(MissingNotificationPermission value)
        missingNotificationPermission,
    required TResult Function(MissingPrivilege value) missingPrivilege,
    required TResult Function(MissingGeoAssets value) missingGeoAssets,
    required TResult Function(InvalidConfigOption value) invalidConfigOption,
    required TResult Function(InvalidConfig value) invalidConfig,
  }) {
    return missingVpnPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedConnectionFailure value)? unexpected,
    TResult? Function(MissingVpnPermission value)? missingVpnPermission,
    TResult? Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult? Function(MissingPrivilege value)? missingPrivilege,
    TResult? Function(MissingGeoAssets value)? missingGeoAssets,
    TResult? Function(InvalidConfigOption value)? invalidConfigOption,
    TResult? Function(InvalidConfig value)? invalidConfig,
  }) {
    return missingVpnPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedConnectionFailure value)? unexpected,
    TResult Function(MissingVpnPermission value)? missingVpnPermission,
    TResult Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult Function(MissingPrivilege value)? missingPrivilege,
    TResult Function(MissingGeoAssets value)? missingGeoAssets,
    TResult Function(InvalidConfigOption value)? invalidConfigOption,
    TResult Function(InvalidConfig value)? invalidConfig,
    required TResult orElse(),
  }) {
    if (missingVpnPermission != null) {
      return missingVpnPermission(this);
    }
    return orElse();
  }
}

abstract class MissingVpnPermission extends ConnectionFailure
    implements ExpectedMeasuredFailure {
  const factory MissingVpnPermission([final String? message]) =
      _$MissingVpnPermissionImpl;
  const MissingVpnPermission._() : super._();

  String? get message;

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissingVpnPermissionImplCopyWith<_$MissingVpnPermissionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MissingNotificationPermissionImplCopyWith<$Res> {
  factory _$$MissingNotificationPermissionImplCopyWith(
          _$MissingNotificationPermissionImpl value,
          $Res Function(_$MissingNotificationPermissionImpl) then) =
      __$$MissingNotificationPermissionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$MissingNotificationPermissionImplCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res,
        _$MissingNotificationPermissionImpl>
    implements _$$MissingNotificationPermissionImplCopyWith<$Res> {
  __$$MissingNotificationPermissionImplCopyWithImpl(
      _$MissingNotificationPermissionImpl _value,
      $Res Function(_$MissingNotificationPermissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$MissingNotificationPermissionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MissingNotificationPermissionImpl extends MissingNotificationPermission
    with ExpectedMeasuredFailure {
  const _$MissingNotificationPermissionImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'ConnectionFailure.missingNotificationPermission(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissingNotificationPermissionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MissingNotificationPermissionImplCopyWith<
          _$MissingNotificationPermissionImpl>
      get copyWith => __$$MissingNotificationPermissionImplCopyWithImpl<
          _$MissingNotificationPermissionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function(String? message) missingVpnPermission,
    required TResult Function(String? message) missingNotificationPermission,
    required TResult Function() missingPrivilege,
    required TResult Function() missingGeoAssets,
    required TResult Function(String? message) invalidConfigOption,
    required TResult Function(String? message) invalidConfig,
  }) {
    return missingNotificationPermission(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function(String? message)? missingVpnPermission,
    TResult? Function(String? message)? missingNotificationPermission,
    TResult? Function()? missingPrivilege,
    TResult? Function()? missingGeoAssets,
    TResult? Function(String? message)? invalidConfigOption,
    TResult? Function(String? message)? invalidConfig,
  }) {
    return missingNotificationPermission?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function(String? message)? missingVpnPermission,
    TResult Function(String? message)? missingNotificationPermission,
    TResult Function()? missingPrivilege,
    TResult Function()? missingGeoAssets,
    TResult Function(String? message)? invalidConfigOption,
    TResult Function(String? message)? invalidConfig,
    required TResult orElse(),
  }) {
    if (missingNotificationPermission != null) {
      return missingNotificationPermission(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedConnectionFailure value) unexpected,
    required TResult Function(MissingVpnPermission value) missingVpnPermission,
    required TResult Function(MissingNotificationPermission value)
        missingNotificationPermission,
    required TResult Function(MissingPrivilege value) missingPrivilege,
    required TResult Function(MissingGeoAssets value) missingGeoAssets,
    required TResult Function(InvalidConfigOption value) invalidConfigOption,
    required TResult Function(InvalidConfig value) invalidConfig,
  }) {
    return missingNotificationPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedConnectionFailure value)? unexpected,
    TResult? Function(MissingVpnPermission value)? missingVpnPermission,
    TResult? Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult? Function(MissingPrivilege value)? missingPrivilege,
    TResult? Function(MissingGeoAssets value)? missingGeoAssets,
    TResult? Function(InvalidConfigOption value)? invalidConfigOption,
    TResult? Function(InvalidConfig value)? invalidConfig,
  }) {
    return missingNotificationPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedConnectionFailure value)? unexpected,
    TResult Function(MissingVpnPermission value)? missingVpnPermission,
    TResult Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult Function(MissingPrivilege value)? missingPrivilege,
    TResult Function(MissingGeoAssets value)? missingGeoAssets,
    TResult Function(InvalidConfigOption value)? invalidConfigOption,
    TResult Function(InvalidConfig value)? invalidConfig,
    required TResult orElse(),
  }) {
    if (missingNotificationPermission != null) {
      return missingNotificationPermission(this);
    }
    return orElse();
  }
}

abstract class MissingNotificationPermission extends ConnectionFailure
    implements ExpectedMeasuredFailure {
  const factory MissingNotificationPermission([final String? message]) =
      _$MissingNotificationPermissionImpl;
  const MissingNotificationPermission._() : super._();

  String? get message;

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MissingNotificationPermissionImplCopyWith<
          _$MissingNotificationPermissionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MissingPrivilegeImplCopyWith<$Res> {
  factory _$$MissingPrivilegeImplCopyWith(_$MissingPrivilegeImpl value,
          $Res Function(_$MissingPrivilegeImpl) then) =
      __$$MissingPrivilegeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MissingPrivilegeImplCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res, _$MissingPrivilegeImpl>
    implements _$$MissingPrivilegeImplCopyWith<$Res> {
  __$$MissingPrivilegeImplCopyWithImpl(_$MissingPrivilegeImpl _value,
      $Res Function(_$MissingPrivilegeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MissingPrivilegeImpl extends MissingPrivilege
    with ExpectedMeasuredFailure {
  const _$MissingPrivilegeImpl() : super._();

  @override
  String toString() {
    return 'ConnectionFailure.missingPrivilege()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MissingPrivilegeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function(String? message) missingVpnPermission,
    required TResult Function(String? message) missingNotificationPermission,
    required TResult Function() missingPrivilege,
    required TResult Function() missingGeoAssets,
    required TResult Function(String? message) invalidConfigOption,
    required TResult Function(String? message) invalidConfig,
  }) {
    return missingPrivilege();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function(String? message)? missingVpnPermission,
    TResult? Function(String? message)? missingNotificationPermission,
    TResult? Function()? missingPrivilege,
    TResult? Function()? missingGeoAssets,
    TResult? Function(String? message)? invalidConfigOption,
    TResult? Function(String? message)? invalidConfig,
  }) {
    return missingPrivilege?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function(String? message)? missingVpnPermission,
    TResult Function(String? message)? missingNotificationPermission,
    TResult Function()? missingPrivilege,
    TResult Function()? missingGeoAssets,
    TResult Function(String? message)? invalidConfigOption,
    TResult Function(String? message)? invalidConfig,
    required TResult orElse(),
  }) {
    if (missingPrivilege != null) {
      return missingPrivilege();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedConnectionFailure value) unexpected,
    required TResult Function(MissingVpnPermission value) missingVpnPermission,
    required TResult Function(MissingNotificationPermission value)
        missingNotificationPermission,
    required TResult Function(MissingPrivilege value) missingPrivilege,
    required TResult Function(MissingGeoAssets value) missingGeoAssets,
    required TResult Function(InvalidConfigOption value) invalidConfigOption,
    required TResult Function(InvalidConfig value) invalidConfig,
  }) {
    return missingPrivilege(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedConnectionFailure value)? unexpected,
    TResult? Function(MissingVpnPermission value)? missingVpnPermission,
    TResult? Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult? Function(MissingPrivilege value)? missingPrivilege,
    TResult? Function(MissingGeoAssets value)? missingGeoAssets,
    TResult? Function(InvalidConfigOption value)? invalidConfigOption,
    TResult? Function(InvalidConfig value)? invalidConfig,
  }) {
    return missingPrivilege?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedConnectionFailure value)? unexpected,
    TResult Function(MissingVpnPermission value)? missingVpnPermission,
    TResult Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult Function(MissingPrivilege value)? missingPrivilege,
    TResult Function(MissingGeoAssets value)? missingGeoAssets,
    TResult Function(InvalidConfigOption value)? invalidConfigOption,
    TResult Function(InvalidConfig value)? invalidConfig,
    required TResult orElse(),
  }) {
    if (missingPrivilege != null) {
      return missingPrivilege(this);
    }
    return orElse();
  }
}

abstract class MissingPrivilege extends ConnectionFailure
    implements ExpectedMeasuredFailure {
  const factory MissingPrivilege() = _$MissingPrivilegeImpl;
  const MissingPrivilege._() : super._();
}

/// @nodoc
abstract class _$$MissingGeoAssetsImplCopyWith<$Res> {
  factory _$$MissingGeoAssetsImplCopyWith(_$MissingGeoAssetsImpl value,
          $Res Function(_$MissingGeoAssetsImpl) then) =
      __$$MissingGeoAssetsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MissingGeoAssetsImplCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res, _$MissingGeoAssetsImpl>
    implements _$$MissingGeoAssetsImplCopyWith<$Res> {
  __$$MissingGeoAssetsImplCopyWithImpl(_$MissingGeoAssetsImpl _value,
      $Res Function(_$MissingGeoAssetsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MissingGeoAssetsImpl extends MissingGeoAssets
    with ExpectedMeasuredFailure {
  const _$MissingGeoAssetsImpl() : super._();

  @override
  String toString() {
    return 'ConnectionFailure.missingGeoAssets()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MissingGeoAssetsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function(String? message) missingVpnPermission,
    required TResult Function(String? message) missingNotificationPermission,
    required TResult Function() missingPrivilege,
    required TResult Function() missingGeoAssets,
    required TResult Function(String? message) invalidConfigOption,
    required TResult Function(String? message) invalidConfig,
  }) {
    return missingGeoAssets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function(String? message)? missingVpnPermission,
    TResult? Function(String? message)? missingNotificationPermission,
    TResult? Function()? missingPrivilege,
    TResult? Function()? missingGeoAssets,
    TResult? Function(String? message)? invalidConfigOption,
    TResult? Function(String? message)? invalidConfig,
  }) {
    return missingGeoAssets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function(String? message)? missingVpnPermission,
    TResult Function(String? message)? missingNotificationPermission,
    TResult Function()? missingPrivilege,
    TResult Function()? missingGeoAssets,
    TResult Function(String? message)? invalidConfigOption,
    TResult Function(String? message)? invalidConfig,
    required TResult orElse(),
  }) {
    if (missingGeoAssets != null) {
      return missingGeoAssets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedConnectionFailure value) unexpected,
    required TResult Function(MissingVpnPermission value) missingVpnPermission,
    required TResult Function(MissingNotificationPermission value)
        missingNotificationPermission,
    required TResult Function(MissingPrivilege value) missingPrivilege,
    required TResult Function(MissingGeoAssets value) missingGeoAssets,
    required TResult Function(InvalidConfigOption value) invalidConfigOption,
    required TResult Function(InvalidConfig value) invalidConfig,
  }) {
    return missingGeoAssets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedConnectionFailure value)? unexpected,
    TResult? Function(MissingVpnPermission value)? missingVpnPermission,
    TResult? Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult? Function(MissingPrivilege value)? missingPrivilege,
    TResult? Function(MissingGeoAssets value)? missingGeoAssets,
    TResult? Function(InvalidConfigOption value)? invalidConfigOption,
    TResult? Function(InvalidConfig value)? invalidConfig,
  }) {
    return missingGeoAssets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedConnectionFailure value)? unexpected,
    TResult Function(MissingVpnPermission value)? missingVpnPermission,
    TResult Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult Function(MissingPrivilege value)? missingPrivilege,
    TResult Function(MissingGeoAssets value)? missingGeoAssets,
    TResult Function(InvalidConfigOption value)? invalidConfigOption,
    TResult Function(InvalidConfig value)? invalidConfig,
    required TResult orElse(),
  }) {
    if (missingGeoAssets != null) {
      return missingGeoAssets(this);
    }
    return orElse();
  }
}

abstract class MissingGeoAssets extends ConnectionFailure
    implements ExpectedMeasuredFailure {
  const factory MissingGeoAssets() = _$MissingGeoAssetsImpl;
  const MissingGeoAssets._() : super._();
}

/// @nodoc
abstract class _$$InvalidConfigOptionImplCopyWith<$Res> {
  factory _$$InvalidConfigOptionImplCopyWith(_$InvalidConfigOptionImpl value,
          $Res Function(_$InvalidConfigOptionImpl) then) =
      __$$InvalidConfigOptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$InvalidConfigOptionImplCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res, _$InvalidConfigOptionImpl>
    implements _$$InvalidConfigOptionImplCopyWith<$Res> {
  __$$InvalidConfigOptionImplCopyWithImpl(_$InvalidConfigOptionImpl _value,
      $Res Function(_$InvalidConfigOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InvalidConfigOptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidConfigOptionImpl extends InvalidConfigOption
    with ExpectedMeasuredFailure {
  const _$InvalidConfigOptionImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'ConnectionFailure.invalidConfigOption(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidConfigOptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidConfigOptionImplCopyWith<_$InvalidConfigOptionImpl> get copyWith =>
      __$$InvalidConfigOptionImplCopyWithImpl<_$InvalidConfigOptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function(String? message) missingVpnPermission,
    required TResult Function(String? message) missingNotificationPermission,
    required TResult Function() missingPrivilege,
    required TResult Function() missingGeoAssets,
    required TResult Function(String? message) invalidConfigOption,
    required TResult Function(String? message) invalidConfig,
  }) {
    return invalidConfigOption(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function(String? message)? missingVpnPermission,
    TResult? Function(String? message)? missingNotificationPermission,
    TResult? Function()? missingPrivilege,
    TResult? Function()? missingGeoAssets,
    TResult? Function(String? message)? invalidConfigOption,
    TResult? Function(String? message)? invalidConfig,
  }) {
    return invalidConfigOption?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function(String? message)? missingVpnPermission,
    TResult Function(String? message)? missingNotificationPermission,
    TResult Function()? missingPrivilege,
    TResult Function()? missingGeoAssets,
    TResult Function(String? message)? invalidConfigOption,
    TResult Function(String? message)? invalidConfig,
    required TResult orElse(),
  }) {
    if (invalidConfigOption != null) {
      return invalidConfigOption(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedConnectionFailure value) unexpected,
    required TResult Function(MissingVpnPermission value) missingVpnPermission,
    required TResult Function(MissingNotificationPermission value)
        missingNotificationPermission,
    required TResult Function(MissingPrivilege value) missingPrivilege,
    required TResult Function(MissingGeoAssets value) missingGeoAssets,
    required TResult Function(InvalidConfigOption value) invalidConfigOption,
    required TResult Function(InvalidConfig value) invalidConfig,
  }) {
    return invalidConfigOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedConnectionFailure value)? unexpected,
    TResult? Function(MissingVpnPermission value)? missingVpnPermission,
    TResult? Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult? Function(MissingPrivilege value)? missingPrivilege,
    TResult? Function(MissingGeoAssets value)? missingGeoAssets,
    TResult? Function(InvalidConfigOption value)? invalidConfigOption,
    TResult? Function(InvalidConfig value)? invalidConfig,
  }) {
    return invalidConfigOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedConnectionFailure value)? unexpected,
    TResult Function(MissingVpnPermission value)? missingVpnPermission,
    TResult Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult Function(MissingPrivilege value)? missingPrivilege,
    TResult Function(MissingGeoAssets value)? missingGeoAssets,
    TResult Function(InvalidConfigOption value)? invalidConfigOption,
    TResult Function(InvalidConfig value)? invalidConfig,
    required TResult orElse(),
  }) {
    if (invalidConfigOption != null) {
      return invalidConfigOption(this);
    }
    return orElse();
  }
}

abstract class InvalidConfigOption extends ConnectionFailure
    implements ExpectedMeasuredFailure {
  const factory InvalidConfigOption([final String? message]) =
      _$InvalidConfigOptionImpl;
  const InvalidConfigOption._() : super._();

  String? get message;

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidConfigOptionImplCopyWith<_$InvalidConfigOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidConfigImplCopyWith<$Res> {
  factory _$$InvalidConfigImplCopyWith(
          _$InvalidConfigImpl value, $Res Function(_$InvalidConfigImpl) then) =
      __$$InvalidConfigImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$InvalidConfigImplCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res, _$InvalidConfigImpl>
    implements _$$InvalidConfigImplCopyWith<$Res> {
  __$$InvalidConfigImplCopyWithImpl(
      _$InvalidConfigImpl _value, $Res Function(_$InvalidConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InvalidConfigImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidConfigImpl extends InvalidConfig with ExpectedMeasuredFailure {
  const _$InvalidConfigImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'ConnectionFailure.invalidConfig(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidConfigImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidConfigImplCopyWith<_$InvalidConfigImpl> get copyWith =>
      __$$InvalidConfigImplCopyWithImpl<_$InvalidConfigImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error, StackTrace? stackTrace) unexpected,
    required TResult Function(String? message) missingVpnPermission,
    required TResult Function(String? message) missingNotificationPermission,
    required TResult Function() missingPrivilege,
    required TResult Function() missingGeoAssets,
    required TResult Function(String? message) invalidConfigOption,
    required TResult Function(String? message) invalidConfig,
  }) {
    return invalidConfig(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult? Function(String? message)? missingVpnPermission,
    TResult? Function(String? message)? missingNotificationPermission,
    TResult? Function()? missingPrivilege,
    TResult? Function()? missingGeoAssets,
    TResult? Function(String? message)? invalidConfigOption,
    TResult? Function(String? message)? invalidConfig,
  }) {
    return invalidConfig?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error, StackTrace? stackTrace)? unexpected,
    TResult Function(String? message)? missingVpnPermission,
    TResult Function(String? message)? missingNotificationPermission,
    TResult Function()? missingPrivilege,
    TResult Function()? missingGeoAssets,
    TResult Function(String? message)? invalidConfigOption,
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
    required TResult Function(UnexpectedConnectionFailure value) unexpected,
    required TResult Function(MissingVpnPermission value) missingVpnPermission,
    required TResult Function(MissingNotificationPermission value)
        missingNotificationPermission,
    required TResult Function(MissingPrivilege value) missingPrivilege,
    required TResult Function(MissingGeoAssets value) missingGeoAssets,
    required TResult Function(InvalidConfigOption value) invalidConfigOption,
    required TResult Function(InvalidConfig value) invalidConfig,
  }) {
    return invalidConfig(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedConnectionFailure value)? unexpected,
    TResult? Function(MissingVpnPermission value)? missingVpnPermission,
    TResult? Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult? Function(MissingPrivilege value)? missingPrivilege,
    TResult? Function(MissingGeoAssets value)? missingGeoAssets,
    TResult? Function(InvalidConfigOption value)? invalidConfigOption,
    TResult? Function(InvalidConfig value)? invalidConfig,
  }) {
    return invalidConfig?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedConnectionFailure value)? unexpected,
    TResult Function(MissingVpnPermission value)? missingVpnPermission,
    TResult Function(MissingNotificationPermission value)?
        missingNotificationPermission,
    TResult Function(MissingPrivilege value)? missingPrivilege,
    TResult Function(MissingGeoAssets value)? missingGeoAssets,
    TResult Function(InvalidConfigOption value)? invalidConfigOption,
    TResult Function(InvalidConfig value)? invalidConfig,
    required TResult orElse(),
  }) {
    if (invalidConfig != null) {
      return invalidConfig(this);
    }
    return orElse();
  }
}

abstract class InvalidConfig extends ConnectionFailure
    implements ExpectedMeasuredFailure {
  const factory InvalidConfig([final String? message]) = _$InvalidConfigImpl;
  const InvalidConfig._() : super._();

  String? get message;

  /// Create a copy of ConnectionFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidConfigImplCopyWith<_$InvalidConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
