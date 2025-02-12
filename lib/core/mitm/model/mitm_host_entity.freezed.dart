// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mitm_host_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MitmHostEntity {
  String? get id => throw _privateConstructorUsedError;
  String get hostname => throw _privateConstructorUsedError;
  bool get enable => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id, String hostname, bool enable) host,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? id, String hostname, bool enable)? host,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id, String hostname, bool enable)? host,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MitmHostEntity value) host,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MitmHostEntity value)? host,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MitmHostEntity value)? host,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MitmHostEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MitmHostEntityCopyWith<MitmHostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MitmHostEntityCopyWith<$Res> {
  factory $MitmHostEntityCopyWith(
          MitmHostEntity value, $Res Function(MitmHostEntity) then) =
      _$MitmHostEntityCopyWithImpl<$Res, MitmHostEntity>;
  @useResult
  $Res call({String? id, String hostname, bool enable});
}

/// @nodoc
class _$MitmHostEntityCopyWithImpl<$Res, $Val extends MitmHostEntity>
    implements $MitmHostEntityCopyWith<$Res> {
  _$MitmHostEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MitmHostEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hostname = null,
    Object? enable = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      hostname: null == hostname
          ? _value.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String,
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MitmHostEntityImplCopyWith<$Res>
    implements $MitmHostEntityCopyWith<$Res> {
  factory _$$MitmHostEntityImplCopyWith(_$MitmHostEntityImpl value,
          $Res Function(_$MitmHostEntityImpl) then) =
      __$$MitmHostEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String hostname, bool enable});
}

/// @nodoc
class __$$MitmHostEntityImplCopyWithImpl<$Res>
    extends _$MitmHostEntityCopyWithImpl<$Res, _$MitmHostEntityImpl>
    implements _$$MitmHostEntityImplCopyWith<$Res> {
  __$$MitmHostEntityImplCopyWithImpl(
      _$MitmHostEntityImpl _value, $Res Function(_$MitmHostEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MitmHostEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hostname = null,
    Object? enable = null,
  }) {
    return _then(_$MitmHostEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      hostname: null == hostname
          ? _value.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String,
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MitmHostEntityImpl extends _MitmHostEntity {
  const _$MitmHostEntityImpl(
      {this.id, required this.hostname, required this.enable})
      : super._();

  @override
  final String? id;
  @override
  final String hostname;
  @override
  final bool enable;

  @override
  String toString() {
    return 'MitmHostEntity.host(id: $id, hostname: $hostname, enable: $enable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MitmHostEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hostname, hostname) ||
                other.hostname == hostname) &&
            (identical(other.enable, enable) || other.enable == enable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, hostname, enable);

  /// Create a copy of MitmHostEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MitmHostEntityImplCopyWith<_$MitmHostEntityImpl> get copyWith =>
      __$$MitmHostEntityImplCopyWithImpl<_$MitmHostEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id, String hostname, bool enable) host,
  }) {
    return host(id, hostname, enable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? id, String hostname, bool enable)? host,
  }) {
    return host?.call(id, hostname, enable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id, String hostname, bool enable)? host,
    required TResult orElse(),
  }) {
    if (host != null) {
      return host(id, hostname, enable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MitmHostEntity value) host,
  }) {
    return host(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MitmHostEntity value)? host,
  }) {
    return host?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MitmHostEntity value)? host,
    required TResult orElse(),
  }) {
    if (host != null) {
      return host(this);
    }
    return orElse();
  }
}

abstract class _MitmHostEntity extends MitmHostEntity {
  const factory _MitmHostEntity(
      {final String? id,
      required final String hostname,
      required final bool enable}) = _$MitmHostEntityImpl;
  const _MitmHostEntity._() : super._();

  @override
  String? get id;
  @override
  String get hostname;
  @override
  bool get enable;

  /// Create a copy of MitmHostEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MitmHostEntityImplCopyWith<_$MitmHostEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
