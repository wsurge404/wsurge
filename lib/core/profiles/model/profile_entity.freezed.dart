// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEntity {
  String get id => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  String? get testUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool active,
            String name,
            String url,
            DateTime lastUpdate,
            String? testUrl,
            ProfileOptions? options,
            SubscriptionInfo? subInfo)
        remote,
    required TResult Function(String id, bool active, String name,
            DateTime lastUpdate, String? testUrl)
        local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool active,
            String name,
            String url,
            DateTime lastUpdate,
            String? testUrl,
            ProfileOptions? options,
            SubscriptionInfo? subInfo)?
        remote,
    TResult? Function(String id, bool active, String name, DateTime lastUpdate,
            String? testUrl)?
        local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool active,
            String name,
            String url,
            DateTime lastUpdate,
            String? testUrl,
            ProfileOptions? options,
            SubscriptionInfo? subInfo)?
        remote,
    TResult Function(String id, bool active, String name, DateTime lastUpdate,
            String? testUrl)?
        local,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteProfileEntity value) remote,
    required TResult Function(LocalProfileEntity value) local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteProfileEntity value)? remote,
    TResult? Function(LocalProfileEntity value)? local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteProfileEntity value)? remote,
    TResult Function(LocalProfileEntity value)? local,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileEntityCopyWith<ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEntityCopyWith<$Res> {
  factory $ProfileEntityCopyWith(
          ProfileEntity value, $Res Function(ProfileEntity) then) =
      _$ProfileEntityCopyWithImpl<$Res, ProfileEntity>;
  @useResult
  $Res call(
      {String id,
      bool active,
      String name,
      DateTime lastUpdate,
      String? testUrl});
}

/// @nodoc
class _$ProfileEntityCopyWithImpl<$Res, $Val extends ProfileEntity>
    implements $ProfileEntityCopyWith<$Res> {
  _$ProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? active = null,
    Object? name = null,
    Object? lastUpdate = null,
    Object? testUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      testUrl: freezed == testUrl
          ? _value.testUrl
          : testUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteProfileEntityImplCopyWith<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  factory _$$RemoteProfileEntityImplCopyWith(_$RemoteProfileEntityImpl value,
          $Res Function(_$RemoteProfileEntityImpl) then) =
      __$$RemoteProfileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool active,
      String name,
      String url,
      DateTime lastUpdate,
      String? testUrl,
      ProfileOptions? options,
      SubscriptionInfo? subInfo});

  $ProfileOptionsCopyWith<$Res>? get options;
  $SubscriptionInfoCopyWith<$Res>? get subInfo;
}

/// @nodoc
class __$$RemoteProfileEntityImplCopyWithImpl<$Res>
    extends _$ProfileEntityCopyWithImpl<$Res, _$RemoteProfileEntityImpl>
    implements _$$RemoteProfileEntityImplCopyWith<$Res> {
  __$$RemoteProfileEntityImplCopyWithImpl(_$RemoteProfileEntityImpl _value,
      $Res Function(_$RemoteProfileEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? active = null,
    Object? name = null,
    Object? url = null,
    Object? lastUpdate = null,
    Object? testUrl = freezed,
    Object? options = freezed,
    Object? subInfo = freezed,
  }) {
    return _then(_$RemoteProfileEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      testUrl: freezed == testUrl
          ? _value.testUrl
          : testUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as ProfileOptions?,
      subInfo: freezed == subInfo
          ? _value.subInfo
          : subInfo // ignore: cast_nullable_to_non_nullable
              as SubscriptionInfo?,
    ));
  }

  /// Create a copy of ProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileOptionsCopyWith<$Res>? get options {
    if (_value.options == null) {
      return null;
    }

    return $ProfileOptionsCopyWith<$Res>(_value.options!, (value) {
      return _then(_value.copyWith(options: value));
    });
  }

  /// Create a copy of ProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionInfoCopyWith<$Res>? get subInfo {
    if (_value.subInfo == null) {
      return null;
    }

    return $SubscriptionInfoCopyWith<$Res>(_value.subInfo!, (value) {
      return _then(_value.copyWith(subInfo: value));
    });
  }
}

/// @nodoc

class _$RemoteProfileEntityImpl extends RemoteProfileEntity {
  const _$RemoteProfileEntityImpl(
      {required this.id,
      required this.active,
      required this.name,
      required this.url,
      required this.lastUpdate,
      this.testUrl,
      this.options,
      this.subInfo})
      : super._();

  @override
  final String id;
  @override
  final bool active;
  @override
  final String name;
  @override
  final String url;
  @override
  final DateTime lastUpdate;
  @override
  final String? testUrl;
  @override
  final ProfileOptions? options;
  @override
  final SubscriptionInfo? subInfo;

  @override
  String toString() {
    return 'ProfileEntity.remote(id: $id, active: $active, name: $name, url: $url, lastUpdate: $lastUpdate, testUrl: $testUrl, options: $options, subInfo: $subInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteProfileEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.testUrl, testUrl) || other.testUrl == testUrl) &&
            (identical(other.options, options) || other.options == options) &&
            (identical(other.subInfo, subInfo) || other.subInfo == subInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, active, name, url,
      lastUpdate, testUrl, options, subInfo);

  /// Create a copy of ProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteProfileEntityImplCopyWith<_$RemoteProfileEntityImpl> get copyWith =>
      __$$RemoteProfileEntityImplCopyWithImpl<_$RemoteProfileEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool active,
            String name,
            String url,
            DateTime lastUpdate,
            String? testUrl,
            ProfileOptions? options,
            SubscriptionInfo? subInfo)
        remote,
    required TResult Function(String id, bool active, String name,
            DateTime lastUpdate, String? testUrl)
        local,
  }) {
    return remote(id, active, name, url, lastUpdate, testUrl, options, subInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool active,
            String name,
            String url,
            DateTime lastUpdate,
            String? testUrl,
            ProfileOptions? options,
            SubscriptionInfo? subInfo)?
        remote,
    TResult? Function(String id, bool active, String name, DateTime lastUpdate,
            String? testUrl)?
        local,
  }) {
    return remote?.call(
        id, active, name, url, lastUpdate, testUrl, options, subInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool active,
            String name,
            String url,
            DateTime lastUpdate,
            String? testUrl,
            ProfileOptions? options,
            SubscriptionInfo? subInfo)?
        remote,
    TResult Function(String id, bool active, String name, DateTime lastUpdate,
            String? testUrl)?
        local,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote(
          id, active, name, url, lastUpdate, testUrl, options, subInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteProfileEntity value) remote,
    required TResult Function(LocalProfileEntity value) local,
  }) {
    return remote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteProfileEntity value)? remote,
    TResult? Function(LocalProfileEntity value)? local,
  }) {
    return remote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteProfileEntity value)? remote,
    TResult Function(LocalProfileEntity value)? local,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote(this);
    }
    return orElse();
  }
}

abstract class RemoteProfileEntity extends ProfileEntity {
  const factory RemoteProfileEntity(
      {required final String id,
      required final bool active,
      required final String name,
      required final String url,
      required final DateTime lastUpdate,
      final String? testUrl,
      final ProfileOptions? options,
      final SubscriptionInfo? subInfo}) = _$RemoteProfileEntityImpl;
  const RemoteProfileEntity._() : super._();

  @override
  String get id;
  @override
  bool get active;
  @override
  String get name;
  String get url;
  @override
  DateTime get lastUpdate;
  @override
  String? get testUrl;
  ProfileOptions? get options;
  SubscriptionInfo? get subInfo;

  /// Create a copy of ProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoteProfileEntityImplCopyWith<_$RemoteProfileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalProfileEntityImplCopyWith<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  factory _$$LocalProfileEntityImplCopyWith(_$LocalProfileEntityImpl value,
          $Res Function(_$LocalProfileEntityImpl) then) =
      __$$LocalProfileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool active,
      String name,
      DateTime lastUpdate,
      String? testUrl});
}

/// @nodoc
class __$$LocalProfileEntityImplCopyWithImpl<$Res>
    extends _$ProfileEntityCopyWithImpl<$Res, _$LocalProfileEntityImpl>
    implements _$$LocalProfileEntityImplCopyWith<$Res> {
  __$$LocalProfileEntityImplCopyWithImpl(_$LocalProfileEntityImpl _value,
      $Res Function(_$LocalProfileEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? active = null,
    Object? name = null,
    Object? lastUpdate = null,
    Object? testUrl = freezed,
  }) {
    return _then(_$LocalProfileEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      testUrl: freezed == testUrl
          ? _value.testUrl
          : testUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocalProfileEntityImpl extends LocalProfileEntity {
  const _$LocalProfileEntityImpl(
      {required this.id,
      required this.active,
      required this.name,
      required this.lastUpdate,
      this.testUrl})
      : super._();

  @override
  final String id;
  @override
  final bool active;
  @override
  final String name;
  @override
  final DateTime lastUpdate;
  @override
  final String? testUrl;

  @override
  String toString() {
    return 'ProfileEntity.local(id: $id, active: $active, name: $name, lastUpdate: $lastUpdate, testUrl: $testUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalProfileEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.testUrl, testUrl) || other.testUrl == testUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, active, name, lastUpdate, testUrl);

  /// Create a copy of ProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalProfileEntityImplCopyWith<_$LocalProfileEntityImpl> get copyWith =>
      __$$LocalProfileEntityImplCopyWithImpl<_$LocalProfileEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool active,
            String name,
            String url,
            DateTime lastUpdate,
            String? testUrl,
            ProfileOptions? options,
            SubscriptionInfo? subInfo)
        remote,
    required TResult Function(String id, bool active, String name,
            DateTime lastUpdate, String? testUrl)
        local,
  }) {
    return local(id, active, name, lastUpdate, testUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool active,
            String name,
            String url,
            DateTime lastUpdate,
            String? testUrl,
            ProfileOptions? options,
            SubscriptionInfo? subInfo)?
        remote,
    TResult? Function(String id, bool active, String name, DateTime lastUpdate,
            String? testUrl)?
        local,
  }) {
    return local?.call(id, active, name, lastUpdate, testUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool active,
            String name,
            String url,
            DateTime lastUpdate,
            String? testUrl,
            ProfileOptions? options,
            SubscriptionInfo? subInfo)?
        remote,
    TResult Function(String id, bool active, String name, DateTime lastUpdate,
            String? testUrl)?
        local,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(id, active, name, lastUpdate, testUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteProfileEntity value) remote,
    required TResult Function(LocalProfileEntity value) local,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteProfileEntity value)? remote,
    TResult? Function(LocalProfileEntity value)? local,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteProfileEntity value)? remote,
    TResult Function(LocalProfileEntity value)? local,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class LocalProfileEntity extends ProfileEntity {
  const factory LocalProfileEntity(
      {required final String id,
      required final bool active,
      required final String name,
      required final DateTime lastUpdate,
      final String? testUrl}) = _$LocalProfileEntityImpl;
  const LocalProfileEntity._() : super._();

  @override
  String get id;
  @override
  bool get active;
  @override
  String get name;
  @override
  DateTime get lastUpdate;
  @override
  String? get testUrl;

  /// Create a copy of ProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalProfileEntityImplCopyWith<_$LocalProfileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileOptions {
  Duration get updateInterval => throw _privateConstructorUsedError;

  /// Create a copy of ProfileOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileOptionsCopyWith<ProfileOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileOptionsCopyWith<$Res> {
  factory $ProfileOptionsCopyWith(
          ProfileOptions value, $Res Function(ProfileOptions) then) =
      _$ProfileOptionsCopyWithImpl<$Res, ProfileOptions>;
  @useResult
  $Res call({Duration updateInterval});
}

/// @nodoc
class _$ProfileOptionsCopyWithImpl<$Res, $Val extends ProfileOptions>
    implements $ProfileOptionsCopyWith<$Res> {
  _$ProfileOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateInterval = null,
  }) {
    return _then(_value.copyWith(
      updateInterval: null == updateInterval
          ? _value.updateInterval
          : updateInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileOptionsImplCopyWith<$Res>
    implements $ProfileOptionsCopyWith<$Res> {
  factory _$$ProfileOptionsImplCopyWith(_$ProfileOptionsImpl value,
          $Res Function(_$ProfileOptionsImpl) then) =
      __$$ProfileOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration updateInterval});
}

/// @nodoc
class __$$ProfileOptionsImplCopyWithImpl<$Res>
    extends _$ProfileOptionsCopyWithImpl<$Res, _$ProfileOptionsImpl>
    implements _$$ProfileOptionsImplCopyWith<$Res> {
  __$$ProfileOptionsImplCopyWithImpl(
      _$ProfileOptionsImpl _value, $Res Function(_$ProfileOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateInterval = null,
  }) {
    return _then(_$ProfileOptionsImpl(
      updateInterval: null == updateInterval
          ? _value.updateInterval
          : updateInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$ProfileOptionsImpl implements _ProfileOptions {
  const _$ProfileOptionsImpl({required this.updateInterval});

  @override
  final Duration updateInterval;

  @override
  String toString() {
    return 'ProfileOptions(updateInterval: $updateInterval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileOptionsImpl &&
            (identical(other.updateInterval, updateInterval) ||
                other.updateInterval == updateInterval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateInterval);

  /// Create a copy of ProfileOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileOptionsImplCopyWith<_$ProfileOptionsImpl> get copyWith =>
      __$$ProfileOptionsImplCopyWithImpl<_$ProfileOptionsImpl>(
          this, _$identity);
}

abstract class _ProfileOptions implements ProfileOptions {
  const factory _ProfileOptions({required final Duration updateInterval}) =
      _$ProfileOptionsImpl;

  @override
  Duration get updateInterval;

  /// Create a copy of ProfileOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileOptionsImplCopyWith<_$ProfileOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubscriptionInfo {
  int get upload => throw _privateConstructorUsedError;
  int get download => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  DateTime get expire => throw _privateConstructorUsedError;
  String? get webPageUrl => throw _privateConstructorUsedError;
  String? get supportUrl => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionInfoCopyWith<SubscriptionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionInfoCopyWith<$Res> {
  factory $SubscriptionInfoCopyWith(
          SubscriptionInfo value, $Res Function(SubscriptionInfo) then) =
      _$SubscriptionInfoCopyWithImpl<$Res, SubscriptionInfo>;
  @useResult
  $Res call(
      {int upload,
      int download,
      int total,
      DateTime expire,
      String? webPageUrl,
      String? supportUrl});
}

/// @nodoc
class _$SubscriptionInfoCopyWithImpl<$Res, $Val extends SubscriptionInfo>
    implements $SubscriptionInfoCopyWith<$Res> {
  _$SubscriptionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upload = null,
    Object? download = null,
    Object? total = null,
    Object? expire = null,
    Object? webPageUrl = freezed,
    Object? supportUrl = freezed,
  }) {
    return _then(_value.copyWith(
      upload: null == upload
          ? _value.upload
          : upload // ignore: cast_nullable_to_non_nullable
              as int,
      download: null == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      expire: null == expire
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as DateTime,
      webPageUrl: freezed == webPageUrl
          ? _value.webPageUrl
          : webPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      supportUrl: freezed == supportUrl
          ? _value.supportUrl
          : supportUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionInfoImplCopyWith<$Res>
    implements $SubscriptionInfoCopyWith<$Res> {
  factory _$$SubscriptionInfoImplCopyWith(_$SubscriptionInfoImpl value,
          $Res Function(_$SubscriptionInfoImpl) then) =
      __$$SubscriptionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int upload,
      int download,
      int total,
      DateTime expire,
      String? webPageUrl,
      String? supportUrl});
}

/// @nodoc
class __$$SubscriptionInfoImplCopyWithImpl<$Res>
    extends _$SubscriptionInfoCopyWithImpl<$Res, _$SubscriptionInfoImpl>
    implements _$$SubscriptionInfoImplCopyWith<$Res> {
  __$$SubscriptionInfoImplCopyWithImpl(_$SubscriptionInfoImpl _value,
      $Res Function(_$SubscriptionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upload = null,
    Object? download = null,
    Object? total = null,
    Object? expire = null,
    Object? webPageUrl = freezed,
    Object? supportUrl = freezed,
  }) {
    return _then(_$SubscriptionInfoImpl(
      upload: null == upload
          ? _value.upload
          : upload // ignore: cast_nullable_to_non_nullable
              as int,
      download: null == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      expire: null == expire
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as DateTime,
      webPageUrl: freezed == webPageUrl
          ? _value.webPageUrl
          : webPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      supportUrl: freezed == supportUrl
          ? _value.supportUrl
          : supportUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SubscriptionInfoImpl extends _SubscriptionInfo {
  const _$SubscriptionInfoImpl(
      {required this.upload,
      required this.download,
      required this.total,
      required this.expire,
      this.webPageUrl,
      this.supportUrl})
      : super._();

  @override
  final int upload;
  @override
  final int download;
  @override
  final int total;
  @override
  final DateTime expire;
  @override
  final String? webPageUrl;
  @override
  final String? supportUrl;

  @override
  String toString() {
    return 'SubscriptionInfo(upload: $upload, download: $download, total: $total, expire: $expire, webPageUrl: $webPageUrl, supportUrl: $supportUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionInfoImpl &&
            (identical(other.upload, upload) || other.upload == upload) &&
            (identical(other.download, download) ||
                other.download == download) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.expire, expire) || other.expire == expire) &&
            (identical(other.webPageUrl, webPageUrl) ||
                other.webPageUrl == webPageUrl) &&
            (identical(other.supportUrl, supportUrl) ||
                other.supportUrl == supportUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, upload, download, total, expire, webPageUrl, supportUrl);

  /// Create a copy of SubscriptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionInfoImplCopyWith<_$SubscriptionInfoImpl> get copyWith =>
      __$$SubscriptionInfoImplCopyWithImpl<_$SubscriptionInfoImpl>(
          this, _$identity);
}

abstract class _SubscriptionInfo extends SubscriptionInfo {
  const factory _SubscriptionInfo(
      {required final int upload,
      required final int download,
      required final int total,
      required final DateTime expire,
      final String? webPageUrl,
      final String? supportUrl}) = _$SubscriptionInfoImpl;
  const _SubscriptionInfo._() : super._();

  @override
  int get upload;
  @override
  int get download;
  @override
  int get total;
  @override
  DateTime get expire;
  @override
  String? get webPageUrl;
  @override
  String? get supportUrl;

  /// Create a copy of SubscriptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionInfoImplCopyWith<_$SubscriptionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
