// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mitm_rule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MitmRuleEntity {
  String? get id => throw _privateConstructorUsedError;
  bool get enable => throw _privateConstructorUsedError;
  MitmRuleType get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get urlRegex => throw _privateConstructorUsedError;
  String? get scriptsPath => throw _privateConstructorUsedError;
  String? get replaceContent => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? id,
            bool enable,
            MitmRuleType type,
            String? name,
            String? urlRegex,
            String? scriptsPath,
            String? replaceContent,
            DateTime lastUpdate)
        config,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? id,
            bool enable,
            MitmRuleType type,
            String? name,
            String? urlRegex,
            String? scriptsPath,
            String? replaceContent,
            DateTime lastUpdate)?
        config,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? id,
            bool enable,
            MitmRuleType type,
            String? name,
            String? urlRegex,
            String? scriptsPath,
            String? replaceContent,
            DateTime lastUpdate)?
        config,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MitmRuleEntity value) config,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MitmRuleEntity value)? config,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MitmRuleEntity value)? config,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MitmRuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MitmRuleEntityCopyWith<MitmRuleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MitmRuleEntityCopyWith<$Res> {
  factory $MitmRuleEntityCopyWith(
          MitmRuleEntity value, $Res Function(MitmRuleEntity) then) =
      _$MitmRuleEntityCopyWithImpl<$Res, MitmRuleEntity>;
  @useResult
  $Res call(
      {String? id,
      bool enable,
      MitmRuleType type,
      String? name,
      String? urlRegex,
      String? scriptsPath,
      String? replaceContent,
      DateTime lastUpdate});
}

/// @nodoc
class _$MitmRuleEntityCopyWithImpl<$Res, $Val extends MitmRuleEntity>
    implements $MitmRuleEntityCopyWith<$Res> {
  _$MitmRuleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MitmRuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? enable = null,
    Object? type = null,
    Object? name = freezed,
    Object? urlRegex = freezed,
    Object? scriptsPath = freezed,
    Object? replaceContent = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MitmRuleType,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      urlRegex: freezed == urlRegex
          ? _value.urlRegex
          : urlRegex // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptsPath: freezed == scriptsPath
          ? _value.scriptsPath
          : scriptsPath // ignore: cast_nullable_to_non_nullable
              as String?,
      replaceContent: freezed == replaceContent
          ? _value.replaceContent
          : replaceContent // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MitmRuleEntityImplCopyWith<$Res>
    implements $MitmRuleEntityCopyWith<$Res> {
  factory _$$MitmRuleEntityImplCopyWith(_$MitmRuleEntityImpl value,
          $Res Function(_$MitmRuleEntityImpl) then) =
      __$$MitmRuleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      bool enable,
      MitmRuleType type,
      String? name,
      String? urlRegex,
      String? scriptsPath,
      String? replaceContent,
      DateTime lastUpdate});
}

/// @nodoc
class __$$MitmRuleEntityImplCopyWithImpl<$Res>
    extends _$MitmRuleEntityCopyWithImpl<$Res, _$MitmRuleEntityImpl>
    implements _$$MitmRuleEntityImplCopyWith<$Res> {
  __$$MitmRuleEntityImplCopyWithImpl(
      _$MitmRuleEntityImpl _value, $Res Function(_$MitmRuleEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MitmRuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? enable = null,
    Object? type = null,
    Object? name = freezed,
    Object? urlRegex = freezed,
    Object? scriptsPath = freezed,
    Object? replaceContent = freezed,
    Object? lastUpdate = null,
  }) {
    return _then(_$MitmRuleEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MitmRuleType,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      urlRegex: freezed == urlRegex
          ? _value.urlRegex
          : urlRegex // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptsPath: freezed == scriptsPath
          ? _value.scriptsPath
          : scriptsPath // ignore: cast_nullable_to_non_nullable
              as String?,
      replaceContent: freezed == replaceContent
          ? _value.replaceContent
          : replaceContent // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MitmRuleEntityImpl extends _MitmRuleEntity {
  const _$MitmRuleEntityImpl(
      {this.id,
      required this.enable,
      required this.type,
      this.name,
      this.urlRegex,
      this.scriptsPath,
      this.replaceContent,
      required this.lastUpdate})
      : super._();

  @override
  final String? id;
  @override
  final bool enable;
  @override
  final MitmRuleType type;
  @override
  final String? name;
  @override
  final String? urlRegex;
  @override
  final String? scriptsPath;
  @override
  final String? replaceContent;
  @override
  final DateTime lastUpdate;

  @override
  String toString() {
    return 'MitmRuleEntity.config(id: $id, enable: $enable, type: $type, name: $name, urlRegex: $urlRegex, scriptsPath: $scriptsPath, replaceContent: $replaceContent, lastUpdate: $lastUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MitmRuleEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.enable, enable) || other.enable == enable) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.urlRegex, urlRegex) ||
                other.urlRegex == urlRegex) &&
            (identical(other.scriptsPath, scriptsPath) ||
                other.scriptsPath == scriptsPath) &&
            (identical(other.replaceContent, replaceContent) ||
                other.replaceContent == replaceContent) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, enable, type, name, urlRegex,
      scriptsPath, replaceContent, lastUpdate);

  /// Create a copy of MitmRuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MitmRuleEntityImplCopyWith<_$MitmRuleEntityImpl> get copyWith =>
      __$$MitmRuleEntityImplCopyWithImpl<_$MitmRuleEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? id,
            bool enable,
            MitmRuleType type,
            String? name,
            String? urlRegex,
            String? scriptsPath,
            String? replaceContent,
            DateTime lastUpdate)
        config,
  }) {
    return config(id, enable, type, name, urlRegex, scriptsPath, replaceContent,
        lastUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? id,
            bool enable,
            MitmRuleType type,
            String? name,
            String? urlRegex,
            String? scriptsPath,
            String? replaceContent,
            DateTime lastUpdate)?
        config,
  }) {
    return config?.call(id, enable, type, name, urlRegex, scriptsPath,
        replaceContent, lastUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? id,
            bool enable,
            MitmRuleType type,
            String? name,
            String? urlRegex,
            String? scriptsPath,
            String? replaceContent,
            DateTime lastUpdate)?
        config,
    required TResult orElse(),
  }) {
    if (config != null) {
      return config(id, enable, type, name, urlRegex, scriptsPath,
          replaceContent, lastUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MitmRuleEntity value) config,
  }) {
    return config(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MitmRuleEntity value)? config,
  }) {
    return config?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MitmRuleEntity value)? config,
    required TResult orElse(),
  }) {
    if (config != null) {
      return config(this);
    }
    return orElse();
  }
}

abstract class _MitmRuleEntity extends MitmRuleEntity {
  const factory _MitmRuleEntity(
      {final String? id,
      required final bool enable,
      required final MitmRuleType type,
      final String? name,
      final String? urlRegex,
      final String? scriptsPath,
      final String? replaceContent,
      required final DateTime lastUpdate}) = _$MitmRuleEntityImpl;
  const _MitmRuleEntity._() : super._();

  @override
  String? get id;
  @override
  bool get enable;
  @override
  MitmRuleType get type;
  @override
  String? get name;
  @override
  String? get urlRegex;
  @override
  String? get scriptsPath;
  @override
  String? get replaceContent;
  @override
  DateTime get lastUpdate;

  /// Create a copy of MitmRuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MitmRuleEntityImplCopyWith<_$MitmRuleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
