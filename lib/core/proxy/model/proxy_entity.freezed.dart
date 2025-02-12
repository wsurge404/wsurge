// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proxy_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProxyGroupEntity {
  String get tag => throw _privateConstructorUsedError;
  ProxyType get type => throw _privateConstructorUsedError;
  String get selected => throw _privateConstructorUsedError;
  List<ProxyItemEntity> get items => throw _privateConstructorUsedError;

  /// Create a copy of ProxyGroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProxyGroupEntityCopyWith<ProxyGroupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProxyGroupEntityCopyWith<$Res> {
  factory $ProxyGroupEntityCopyWith(
          ProxyGroupEntity value, $Res Function(ProxyGroupEntity) then) =
      _$ProxyGroupEntityCopyWithImpl<$Res, ProxyGroupEntity>;
  @useResult
  $Res call(
      {String tag,
      ProxyType type,
      String selected,
      List<ProxyItemEntity> items});
}

/// @nodoc
class _$ProxyGroupEntityCopyWithImpl<$Res, $Val extends ProxyGroupEntity>
    implements $ProxyGroupEntityCopyWith<$Res> {
  _$ProxyGroupEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProxyGroupEntity
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
              as List<ProxyItemEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProxyGroupEntityImplCopyWith<$Res>
    implements $ProxyGroupEntityCopyWith<$Res> {
  factory _$$ProxyGroupEntityImplCopyWith(_$ProxyGroupEntityImpl value,
          $Res Function(_$ProxyGroupEntityImpl) then) =
      __$$ProxyGroupEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tag,
      ProxyType type,
      String selected,
      List<ProxyItemEntity> items});
}

/// @nodoc
class __$$ProxyGroupEntityImplCopyWithImpl<$Res>
    extends _$ProxyGroupEntityCopyWithImpl<$Res, _$ProxyGroupEntityImpl>
    implements _$$ProxyGroupEntityImplCopyWith<$Res> {
  __$$ProxyGroupEntityImplCopyWithImpl(_$ProxyGroupEntityImpl _value,
      $Res Function(_$ProxyGroupEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProxyGroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? type = null,
    Object? selected = null,
    Object? items = null,
  }) {
    return _then(_$ProxyGroupEntityImpl(
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
              as List<ProxyItemEntity>,
    ));
  }
}

/// @nodoc

class _$ProxyGroupEntityImpl extends _ProxyGroupEntity {
  const _$ProxyGroupEntityImpl(
      {required this.tag,
      required this.type,
      required this.selected,
      final List<ProxyItemEntity> items = const []})
      : _items = items,
        super._();

  @override
  final String tag;
  @override
  final ProxyType type;
  @override
  final String selected;
  final List<ProxyItemEntity> _items;
  @override
  @JsonKey()
  List<ProxyItemEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ProxyGroupEntity(tag: $tag, type: $type, selected: $selected, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProxyGroupEntityImpl &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag, type, selected,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of ProxyGroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProxyGroupEntityImplCopyWith<_$ProxyGroupEntityImpl> get copyWith =>
      __$$ProxyGroupEntityImplCopyWithImpl<_$ProxyGroupEntityImpl>(
          this, _$identity);
}

abstract class _ProxyGroupEntity extends ProxyGroupEntity {
  const factory _ProxyGroupEntity(
      {required final String tag,
      required final ProxyType type,
      required final String selected,
      final List<ProxyItemEntity> items}) = _$ProxyGroupEntityImpl;
  const _ProxyGroupEntity._() : super._();

  @override
  String get tag;
  @override
  ProxyType get type;
  @override
  String get selected;
  @override
  List<ProxyItemEntity> get items;

  /// Create a copy of ProxyGroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProxyGroupEntityImplCopyWith<_$ProxyGroupEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProxyItemEntity {
  String get tag => throw _privateConstructorUsedError;
  ProxyType get type => throw _privateConstructorUsedError;
  int get urlTestDelay => throw _privateConstructorUsedError;
  String? get selectedTag => throw _privateConstructorUsedError;

  /// Create a copy of ProxyItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProxyItemEntityCopyWith<ProxyItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProxyItemEntityCopyWith<$Res> {
  factory $ProxyItemEntityCopyWith(
          ProxyItemEntity value, $Res Function(ProxyItemEntity) then) =
      _$ProxyItemEntityCopyWithImpl<$Res, ProxyItemEntity>;
  @useResult
  $Res call(
      {String tag, ProxyType type, int urlTestDelay, String? selectedTag});
}

/// @nodoc
class _$ProxyItemEntityCopyWithImpl<$Res, $Val extends ProxyItemEntity>
    implements $ProxyItemEntityCopyWith<$Res> {
  _$ProxyItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProxyItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? type = null,
    Object? urlTestDelay = null,
    Object? selectedTag = freezed,
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
      selectedTag: freezed == selectedTag
          ? _value.selectedTag
          : selectedTag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProxyItemEntityImplCopyWith<$Res>
    implements $ProxyItemEntityCopyWith<$Res> {
  factory _$$ProxyItemEntityImplCopyWith(_$ProxyItemEntityImpl value,
          $Res Function(_$ProxyItemEntityImpl) then) =
      __$$ProxyItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tag, ProxyType type, int urlTestDelay, String? selectedTag});
}

/// @nodoc
class __$$ProxyItemEntityImplCopyWithImpl<$Res>
    extends _$ProxyItemEntityCopyWithImpl<$Res, _$ProxyItemEntityImpl>
    implements _$$ProxyItemEntityImplCopyWith<$Res> {
  __$$ProxyItemEntityImplCopyWithImpl(
      _$ProxyItemEntityImpl _value, $Res Function(_$ProxyItemEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProxyItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? type = null,
    Object? urlTestDelay = null,
    Object? selectedTag = freezed,
  }) {
    return _then(_$ProxyItemEntityImpl(
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
      selectedTag: freezed == selectedTag
          ? _value.selectedTag
          : selectedTag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProxyItemEntityImpl extends _ProxyItemEntity {
  const _$ProxyItemEntityImpl(
      {required this.tag,
      required this.type,
      required this.urlTestDelay,
      this.selectedTag})
      : super._();

  @override
  final String tag;
  @override
  final ProxyType type;
  @override
  final int urlTestDelay;
  @override
  final String? selectedTag;

  @override
  String toString() {
    return 'ProxyItemEntity(tag: $tag, type: $type, urlTestDelay: $urlTestDelay, selectedTag: $selectedTag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProxyItemEntityImpl &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.urlTestDelay, urlTestDelay) ||
                other.urlTestDelay == urlTestDelay) &&
            (identical(other.selectedTag, selectedTag) ||
                other.selectedTag == selectedTag));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tag, type, urlTestDelay, selectedTag);

  /// Create a copy of ProxyItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProxyItemEntityImplCopyWith<_$ProxyItemEntityImpl> get copyWith =>
      __$$ProxyItemEntityImplCopyWithImpl<_$ProxyItemEntityImpl>(
          this, _$identity);
}

abstract class _ProxyItemEntity extends ProxyItemEntity {
  const factory _ProxyItemEntity(
      {required final String tag,
      required final ProxyType type,
      required final int urlTestDelay,
      final String? selectedTag}) = _$ProxyItemEntityImpl;
  const _ProxyItemEntity._() : super._();

  @override
  String get tag;
  @override
  ProxyType get type;
  @override
  int get urlTestDelay;
  @override
  String? get selectedTag;

  /// Create a copy of ProxyItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProxyItemEntityImplCopyWith<_$ProxyItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
