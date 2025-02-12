// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppInfoEntity {
  String get name => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get buildNumber => throw _privateConstructorUsedError;
  Release get release => throw _privateConstructorUsedError;
  String get operatingSystem => throw _privateConstructorUsedError;
  String get operatingSystemVersion => throw _privateConstructorUsedError;
  Environment get environment => throw _privateConstructorUsedError;

  /// Create a copy of AppInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppInfoEntityCopyWith<AppInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoEntityCopyWith<$Res> {
  factory $AppInfoEntityCopyWith(
          AppInfoEntity value, $Res Function(AppInfoEntity) then) =
      _$AppInfoEntityCopyWithImpl<$Res, AppInfoEntity>;
  @useResult
  $Res call(
      {String name,
      String version,
      String buildNumber,
      Release release,
      String operatingSystem,
      String operatingSystemVersion,
      Environment environment});
}

/// @nodoc
class _$AppInfoEntityCopyWithImpl<$Res, $Val extends AppInfoEntity>
    implements $AppInfoEntityCopyWith<$Res> {
  _$AppInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? release = null,
    Object? operatingSystem = null,
    Object? operatingSystemVersion = null,
    Object? environment = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      release: null == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as Release,
      operatingSystem: null == operatingSystem
          ? _value.operatingSystem
          : operatingSystem // ignore: cast_nullable_to_non_nullable
              as String,
      operatingSystemVersion: null == operatingSystemVersion
          ? _value.operatingSystemVersion
          : operatingSystemVersion // ignore: cast_nullable_to_non_nullable
              as String,
      environment: null == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppInfoEntityImplCopyWith<$Res>
    implements $AppInfoEntityCopyWith<$Res> {
  factory _$$AppInfoEntityImplCopyWith(
          _$AppInfoEntityImpl value, $Res Function(_$AppInfoEntityImpl) then) =
      __$$AppInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String version,
      String buildNumber,
      Release release,
      String operatingSystem,
      String operatingSystemVersion,
      Environment environment});
}

/// @nodoc
class __$$AppInfoEntityImplCopyWithImpl<$Res>
    extends _$AppInfoEntityCopyWithImpl<$Res, _$AppInfoEntityImpl>
    implements _$$AppInfoEntityImplCopyWith<$Res> {
  __$$AppInfoEntityImplCopyWithImpl(
      _$AppInfoEntityImpl _value, $Res Function(_$AppInfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? release = null,
    Object? operatingSystem = null,
    Object? operatingSystemVersion = null,
    Object? environment = null,
  }) {
    return _then(_$AppInfoEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      release: null == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as Release,
      operatingSystem: null == operatingSystem
          ? _value.operatingSystem
          : operatingSystem // ignore: cast_nullable_to_non_nullable
              as String,
      operatingSystemVersion: null == operatingSystemVersion
          ? _value.operatingSystemVersion
          : operatingSystemVersion // ignore: cast_nullable_to_non_nullable
              as String,
      environment: null == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment,
    ));
  }
}

/// @nodoc

class _$AppInfoEntityImpl extends _AppInfoEntity {
  const _$AppInfoEntityImpl(
      {required this.name,
      required this.version,
      required this.buildNumber,
      required this.release,
      required this.operatingSystem,
      required this.operatingSystemVersion,
      required this.environment})
      : super._();

  @override
  final String name;
  @override
  final String version;
  @override
  final String buildNumber;
  @override
  final Release release;
  @override
  final String operatingSystem;
  @override
  final String operatingSystemVersion;
  @override
  final Environment environment;

  @override
  String toString() {
    return 'AppInfoEntity(name: $name, version: $version, buildNumber: $buildNumber, release: $release, operatingSystem: $operatingSystem, operatingSystemVersion: $operatingSystemVersion, environment: $environment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInfoEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.release, release) || other.release == release) &&
            (identical(other.operatingSystem, operatingSystem) ||
                other.operatingSystem == operatingSystem) &&
            (identical(other.operatingSystemVersion, operatingSystemVersion) ||
                other.operatingSystemVersion == operatingSystemVersion) &&
            (identical(other.environment, environment) ||
                other.environment == environment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, version, buildNumber,
      release, operatingSystem, operatingSystemVersion, environment);

  /// Create a copy of AppInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInfoEntityImplCopyWith<_$AppInfoEntityImpl> get copyWith =>
      __$$AppInfoEntityImplCopyWithImpl<_$AppInfoEntityImpl>(this, _$identity);
}

abstract class _AppInfoEntity extends AppInfoEntity {
  const factory _AppInfoEntity(
      {required final String name,
      required final String version,
      required final String buildNumber,
      required final Release release,
      required final String operatingSystem,
      required final String operatingSystemVersion,
      required final Environment environment}) = _$AppInfoEntityImpl;
  const _AppInfoEntity._() : super._();

  @override
  String get name;
  @override
  String get version;
  @override
  String get buildNumber;
  @override
  Release get release;
  @override
  String get operatingSystem;
  @override
  String get operatingSystemVersion;
  @override
  Environment get environment;

  /// Create a copy of AppInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppInfoEntityImplCopyWith<_$AppInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
