// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mitm_config_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MitmConfigEntity {
  String? get id => throw _privateConstructorUsedError;
  bool get enable => throw _privateConstructorUsedError;
  String? get certFile => throw _privateConstructorUsedError;
  String? get keyFile => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id, bool enable, String? certFile,
            String? keyFile, DateTime lastUpdate)
        config,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? id, bool enable, String? certFile,
            String? keyFile, DateTime lastUpdate)?
        config,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id, bool enable, String? certFile, String? keyFile,
            DateTime lastUpdate)?
        config,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MitmConfigEntity value) config,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MitmConfigEntity value)? config,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MitmConfigEntity value)? config,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MitmConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MitmConfigEntityCopyWith<MitmConfigEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MitmConfigEntityCopyWith<$Res> {
  factory $MitmConfigEntityCopyWith(
          MitmConfigEntity value, $Res Function(MitmConfigEntity) then) =
      _$MitmConfigEntityCopyWithImpl<$Res, MitmConfigEntity>;
  @useResult
  $Res call(
      {String? id,
      bool enable,
      String? certFile,
      String? keyFile,
      DateTime lastUpdate});
}

/// @nodoc
class _$MitmConfigEntityCopyWithImpl<$Res, $Val extends MitmConfigEntity>
    implements $MitmConfigEntityCopyWith<$Res> {
  _$MitmConfigEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MitmConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? enable = null,
    Object? certFile = freezed,
    Object? keyFile = freezed,
    Object? lastUpdate = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      certFile: freezed == certFile
          ? _value.certFile
          : certFile // ignore: cast_nullable_to_non_nullable
              as String?,
      keyFile: freezed == keyFile
          ? _value.keyFile
          : keyFile // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MitmConfigEntityImplCopyWith<$Res>
    implements $MitmConfigEntityCopyWith<$Res> {
  factory _$$MitmConfigEntityImplCopyWith(_$MitmConfigEntityImpl value,
          $Res Function(_$MitmConfigEntityImpl) then) =
      __$$MitmConfigEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      bool enable,
      String? certFile,
      String? keyFile,
      DateTime lastUpdate});
}

/// @nodoc
class __$$MitmConfigEntityImplCopyWithImpl<$Res>
    extends _$MitmConfigEntityCopyWithImpl<$Res, _$MitmConfigEntityImpl>
    implements _$$MitmConfigEntityImplCopyWith<$Res> {
  __$$MitmConfigEntityImplCopyWithImpl(_$MitmConfigEntityImpl _value,
      $Res Function(_$MitmConfigEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MitmConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? enable = null,
    Object? certFile = freezed,
    Object? keyFile = freezed,
    Object? lastUpdate = null,
  }) {
    return _then(_$MitmConfigEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      certFile: freezed == certFile
          ? _value.certFile
          : certFile // ignore: cast_nullable_to_non_nullable
              as String?,
      keyFile: freezed == keyFile
          ? _value.keyFile
          : keyFile // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MitmConfigEntityImpl extends _MitmConfigEntity {
  const _$MitmConfigEntityImpl(
      {this.id,
      required this.enable,
      this.certFile,
      this.keyFile,
      required this.lastUpdate})
      : super._();

  @override
  final String? id;
  @override
  final bool enable;
  @override
  final String? certFile;
  @override
  final String? keyFile;
  @override
  final DateTime lastUpdate;

  @override
  String toString() {
    return 'MitmConfigEntity.config(id: $id, enable: $enable, certFile: $certFile, keyFile: $keyFile, lastUpdate: $lastUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MitmConfigEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.enable, enable) || other.enable == enable) &&
            (identical(other.certFile, certFile) ||
                other.certFile == certFile) &&
            (identical(other.keyFile, keyFile) || other.keyFile == keyFile) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, enable, certFile, keyFile, lastUpdate);

  /// Create a copy of MitmConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MitmConfigEntityImplCopyWith<_$MitmConfigEntityImpl> get copyWith =>
      __$$MitmConfigEntityImplCopyWithImpl<_$MitmConfigEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id, bool enable, String? certFile,
            String? keyFile, DateTime lastUpdate)
        config,
  }) {
    return config(id, enable, certFile, keyFile, lastUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? id, bool enable, String? certFile,
            String? keyFile, DateTime lastUpdate)?
        config,
  }) {
    return config?.call(id, enable, certFile, keyFile, lastUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id, bool enable, String? certFile, String? keyFile,
            DateTime lastUpdate)?
        config,
    required TResult orElse(),
  }) {
    if (config != null) {
      return config(id, enable, certFile, keyFile, lastUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MitmConfigEntity value) config,
  }) {
    return config(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MitmConfigEntity value)? config,
  }) {
    return config?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MitmConfigEntity value)? config,
    required TResult orElse(),
  }) {
    if (config != null) {
      return config(this);
    }
    return orElse();
  }
}

abstract class _MitmConfigEntity extends MitmConfigEntity {
  const factory _MitmConfigEntity(
      {final String? id,
      required final bool enable,
      final String? certFile,
      final String? keyFile,
      required final DateTime lastUpdate}) = _$MitmConfigEntityImpl;
  const _MitmConfigEntity._() : super._();

  @override
  String? get id;
  @override
  bool get enable;
  @override
  String? get certFile;
  @override
  String? get keyFile;
  @override
  DateTime get lastUpdate;

  /// Create a copy of MitmConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MitmConfigEntityImplCopyWith<_$MitmConfigEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
