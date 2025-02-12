// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'singbox_outbound.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SingboxOutboundGroup _$SingboxOutboundGroupFromJson(Map<String, dynamic> json) {
  return _SingboxOutboundGroup.fromJson(json);
}

/// @nodoc
mixin _$SingboxOutboundGroup {
  String get tag => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _typeFromJson)
  ProxyType get type => throw _privateConstructorUsedError;
  String get selected => throw _privateConstructorUsedError;
  List<SingboxOutboundGroupItem> get items =>
      throw _privateConstructorUsedError;

  /// Serializes this SingboxOutboundGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SingboxOutboundGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingboxOutboundGroupCopyWith<SingboxOutboundGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingboxOutboundGroupCopyWith<$Res> {
  factory $SingboxOutboundGroupCopyWith(SingboxOutboundGroup value,
          $Res Function(SingboxOutboundGroup) then) =
      _$SingboxOutboundGroupCopyWithImpl<$Res, SingboxOutboundGroup>;
  @useResult
  $Res call(
      {String tag,
      @JsonKey(fromJson: _typeFromJson) ProxyType type,
      String selected,
      List<SingboxOutboundGroupItem> items});
}

/// @nodoc
class _$SingboxOutboundGroupCopyWithImpl<$Res,
        $Val extends SingboxOutboundGroup>
    implements $SingboxOutboundGroupCopyWith<$Res> {
  _$SingboxOutboundGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingboxOutboundGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? type = null,
    Object? selected = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProxyType,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SingboxOutboundGroupItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingboxOutboundGroupImplCopyWith<$Res>
    implements $SingboxOutboundGroupCopyWith<$Res> {
  factory _$$SingboxOutboundGroupImplCopyWith(_$SingboxOutboundGroupImpl value,
          $Res Function(_$SingboxOutboundGroupImpl) then) =
      __$$SingboxOutboundGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tag,
      @JsonKey(fromJson: _typeFromJson) ProxyType type,
      String selected,
      List<SingboxOutboundGroupItem> items});
}

/// @nodoc
class __$$SingboxOutboundGroupImplCopyWithImpl<$Res>
    extends _$SingboxOutboundGroupCopyWithImpl<$Res, _$SingboxOutboundGroupImpl>
    implements _$$SingboxOutboundGroupImplCopyWith<$Res> {
  __$$SingboxOutboundGroupImplCopyWithImpl(_$SingboxOutboundGroupImpl _value,
      $Res Function(_$SingboxOutboundGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingboxOutboundGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? type = null,
    Object? selected = null,
    Object? items = null,
  }) {
    return _then(_$SingboxOutboundGroupImpl(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProxyType,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SingboxOutboundGroupItem>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$SingboxOutboundGroupImpl implements _SingboxOutboundGroup {
  const _$SingboxOutboundGroupImpl(
      {required this.tag,
      @JsonKey(fromJson: _typeFromJson) required this.type,
      required this.selected,
      final List<SingboxOutboundGroupItem> items = const []})
      : _items = items;

  factory _$SingboxOutboundGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingboxOutboundGroupImplFromJson(json);

  @override
  final String tag;
  @override
  @JsonKey(fromJson: _typeFromJson)
  final ProxyType type;
  @override
  final String selected;
  final List<SingboxOutboundGroupItem> _items;
  @override
  @JsonKey()
  List<SingboxOutboundGroupItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SingboxOutboundGroup(tag: $tag, type: $type, selected: $selected, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingboxOutboundGroupImpl &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tag, type, selected,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of SingboxOutboundGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingboxOutboundGroupImplCopyWith<_$SingboxOutboundGroupImpl>
      get copyWith =>
          __$$SingboxOutboundGroupImplCopyWithImpl<_$SingboxOutboundGroupImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingboxOutboundGroupImplToJson(
      this,
    );
  }
}

abstract class _SingboxOutboundGroup implements SingboxOutboundGroup {
  const factory _SingboxOutboundGroup(
      {required final String tag,
      @JsonKey(fromJson: _typeFromJson) required final ProxyType type,
      required final String selected,
      final List<SingboxOutboundGroupItem> items}) = _$SingboxOutboundGroupImpl;

  factory _SingboxOutboundGroup.fromJson(Map<String, dynamic> json) =
      _$SingboxOutboundGroupImpl.fromJson;

  @override
  String get tag;
  @override
  @JsonKey(fromJson: _typeFromJson)
  ProxyType get type;
  @override
  String get selected;
  @override
  List<SingboxOutboundGroupItem> get items;

  /// Create a copy of SingboxOutboundGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingboxOutboundGroupImplCopyWith<_$SingboxOutboundGroupImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SingboxOutboundGroupItem _$SingboxOutboundGroupItemFromJson(
    Map<String, dynamic> json) {
  return _SingboxOutboundGroupItem.fromJson(json);
}

/// @nodoc
mixin _$SingboxOutboundGroupItem {
  String get tag => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _typeFromJson)
  ProxyType get type => throw _privateConstructorUsedError;
  int get urlTestDelay => throw _privateConstructorUsedError;

  /// Serializes this SingboxOutboundGroupItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SingboxOutboundGroupItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingboxOutboundGroupItemCopyWith<SingboxOutboundGroupItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingboxOutboundGroupItemCopyWith<$Res> {
  factory $SingboxOutboundGroupItemCopyWith(SingboxOutboundGroupItem value,
          $Res Function(SingboxOutboundGroupItem) then) =
      _$SingboxOutboundGroupItemCopyWithImpl<$Res, SingboxOutboundGroupItem>;
  @useResult
  $Res call(
      {String tag,
      @JsonKey(fromJson: _typeFromJson) ProxyType type,
      int urlTestDelay});
}

/// @nodoc
class _$SingboxOutboundGroupItemCopyWithImpl<$Res,
        $Val extends SingboxOutboundGroupItem>
    implements $SingboxOutboundGroupItemCopyWith<$Res> {
  _$SingboxOutboundGroupItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingboxOutboundGroupItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? type = null,
    Object? urlTestDelay = null,
  }) {
    return _then(_value.copyWith(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProxyType,
      urlTestDelay: null == urlTestDelay
          ? _value.urlTestDelay
          : urlTestDelay // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingboxOutboundGroupItemImplCopyWith<$Res>
    implements $SingboxOutboundGroupItemCopyWith<$Res> {
  factory _$$SingboxOutboundGroupItemImplCopyWith(
          _$SingboxOutboundGroupItemImpl value,
          $Res Function(_$SingboxOutboundGroupItemImpl) then) =
      __$$SingboxOutboundGroupItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tag,
      @JsonKey(fromJson: _typeFromJson) ProxyType type,
      int urlTestDelay});
}

/// @nodoc
class __$$SingboxOutboundGroupItemImplCopyWithImpl<$Res>
    extends _$SingboxOutboundGroupItemCopyWithImpl<$Res,
        _$SingboxOutboundGroupItemImpl>
    implements _$$SingboxOutboundGroupItemImplCopyWith<$Res> {
  __$$SingboxOutboundGroupItemImplCopyWithImpl(
      _$SingboxOutboundGroupItemImpl _value,
      $Res Function(_$SingboxOutboundGroupItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingboxOutboundGroupItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? type = null,
    Object? urlTestDelay = null,
  }) {
    return _then(_$SingboxOutboundGroupItemImpl(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProxyType,
      urlTestDelay: null == urlTestDelay
          ? _value.urlTestDelay
          : urlTestDelay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$SingboxOutboundGroupItemImpl extends _SingboxOutboundGroupItem {
  const _$SingboxOutboundGroupItemImpl(
      {required this.tag,
      @JsonKey(fromJson: _typeFromJson) required this.type,
      required this.urlTestDelay})
      : super._();

  factory _$SingboxOutboundGroupItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingboxOutboundGroupItemImplFromJson(json);

  @override
  final String tag;
  @override
  @JsonKey(fromJson: _typeFromJson)
  final ProxyType type;
  @override
  final int urlTestDelay;

  @override
  String toString() {
    return 'SingboxOutboundGroupItem(tag: $tag, type: $type, urlTestDelay: $urlTestDelay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingboxOutboundGroupItemImpl &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.urlTestDelay, urlTestDelay) ||
                other.urlTestDelay == urlTestDelay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tag, type, urlTestDelay);

  /// Create a copy of SingboxOutboundGroupItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingboxOutboundGroupItemImplCopyWith<_$SingboxOutboundGroupItemImpl>
      get copyWith => __$$SingboxOutboundGroupItemImplCopyWithImpl<
          _$SingboxOutboundGroupItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingboxOutboundGroupItemImplToJson(
      this,
    );
  }
}

abstract class _SingboxOutboundGroupItem extends SingboxOutboundGroupItem {
  const factory _SingboxOutboundGroupItem(
      {required final String tag,
      @JsonKey(fromJson: _typeFromJson) required final ProxyType type,
      required final int urlTestDelay}) = _$SingboxOutboundGroupItemImpl;
  const _SingboxOutboundGroupItem._() : super._();

  factory _SingboxOutboundGroupItem.fromJson(Map<String, dynamic> json) =
      _$SingboxOutboundGroupItemImpl.fromJson;

  @override
  String get tag;
  @override
  @JsonKey(fromJson: _typeFromJson)
  ProxyType get type;
  @override
  int get urlTestDelay;

  /// Create a copy of SingboxOutboundGroupItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingboxOutboundGroupItemImplCopyWith<_$SingboxOutboundGroupItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
