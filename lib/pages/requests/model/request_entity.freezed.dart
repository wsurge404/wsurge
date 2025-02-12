// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestEntity _$RequestEntityFromJson(Map<String, dynamic> json) {
  return _RequestEntity.fromJson(json);
}

/// @nodoc
mixin _$RequestEntity {
  String get url => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String? get processPath => throw _privateConstructorUsedError;
  String? get packageName => throw _privateConstructorUsedError;
  Map<String, dynamic>? get headers => throw _privateConstructorUsedError;

  /// Serializes this RequestEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestEntityCopyWith<RequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestEntityCopyWith<$Res> {
  factory $RequestEntityCopyWith(
          RequestEntity value, $Res Function(RequestEntity) then) =
      _$RequestEntityCopyWithImpl<$Res, RequestEntity>;
  @useResult
  $Res call(
      {String url,
      String method,
      String? processPath,
      String? packageName,
      Map<String, dynamic>? headers});
}

/// @nodoc
class _$RequestEntityCopyWithImpl<$Res, $Val extends RequestEntity>
    implements $RequestEntityCopyWith<$Res> {
  _$RequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? method = null,
    Object? processPath = freezed,
    Object? packageName = freezed,
    Object? headers = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      processPath: freezed == processPath
          ? _value.processPath
          : processPath // ignore: cast_nullable_to_non_nullable
              as String?,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestEntityImplCopyWith<$Res>
    implements $RequestEntityCopyWith<$Res> {
  factory _$$RequestEntityImplCopyWith(
          _$RequestEntityImpl value, $Res Function(_$RequestEntityImpl) then) =
      __$$RequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String method,
      String? processPath,
      String? packageName,
      Map<String, dynamic>? headers});
}

/// @nodoc
class __$$RequestEntityImplCopyWithImpl<$Res>
    extends _$RequestEntityCopyWithImpl<$Res, _$RequestEntityImpl>
    implements _$$RequestEntityImplCopyWith<$Res> {
  __$$RequestEntityImplCopyWithImpl(
      _$RequestEntityImpl _value, $Res Function(_$RequestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? method = null,
    Object? processPath = freezed,
    Object? packageName = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$RequestEntityImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      processPath: freezed == processPath
          ? _value.processPath
          : processPath // ignore: cast_nullable_to_non_nullable
              as String?,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$RequestEntityImpl implements _RequestEntity {
  const _$RequestEntityImpl(
      {required this.url,
      required this.method,
      this.processPath,
      this.packageName,
      final Map<String, dynamic>? headers})
      : _headers = headers;

  factory _$RequestEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestEntityImplFromJson(json);

  @override
  final String url;
  @override
  final String method;
  @override
  final String? processPath;
  @override
  final String? packageName;
  final Map<String, dynamic>? _headers;
  @override
  Map<String, dynamic>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RequestEntity(url: $url, method: $method, processPath: $processPath, packageName: $packageName, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestEntityImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.processPath, processPath) ||
                other.processPath == processPath) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, method, processPath,
      packageName, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of RequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestEntityImplCopyWith<_$RequestEntityImpl> get copyWith =>
      __$$RequestEntityImplCopyWithImpl<_$RequestEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestEntityImplToJson(
      this,
    );
  }
}

abstract class _RequestEntity implements RequestEntity {
  const factory _RequestEntity(
      {required final String url,
      required final String method,
      final String? processPath,
      final String? packageName,
      final Map<String, dynamic>? headers}) = _$RequestEntityImpl;

  factory _RequestEntity.fromJson(Map<String, dynamic> json) =
      _$RequestEntityImpl.fromJson;

  @override
  String get url;
  @override
  String get method;
  @override
  String? get processPath;
  @override
  String? get packageName;
  @override
  Map<String, dynamic>? get headers;

  /// Create a copy of RequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestEntityImplCopyWith<_$RequestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
