// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogEntity {
  LogLevel? get level => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of LogEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogEntityCopyWith<LogEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogEntityCopyWith<$Res> {
  factory $LogEntityCopyWith(LogEntity value, $Res Function(LogEntity) then) =
      _$LogEntityCopyWithImpl<$Res, LogEntity>;
  @useResult
  $Res call({LogLevel? level, DateTime? time, String message});
}

/// @nodoc
class _$LogEntityCopyWithImpl<$Res, $Val extends LogEntity>
    implements $LogEntityCopyWith<$Res> {
  _$LogEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = freezed,
    Object? time = freezed,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LogLevel?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogEntityImplCopyWith<$Res>
    implements $LogEntityCopyWith<$Res> {
  factory _$$LogEntityImplCopyWith(
          _$LogEntityImpl value, $Res Function(_$LogEntityImpl) then) =
      __$$LogEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LogLevel? level, DateTime? time, String message});
}

/// @nodoc
class __$$LogEntityImplCopyWithImpl<$Res>
    extends _$LogEntityCopyWithImpl<$Res, _$LogEntityImpl>
    implements _$$LogEntityImplCopyWith<$Res> {
  __$$LogEntityImplCopyWithImpl(
      _$LogEntityImpl _value, $Res Function(_$LogEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = freezed,
    Object? time = freezed,
    Object? message = null,
  }) {
    return _then(_$LogEntityImpl(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LogLevel?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogEntityImpl implements _LogEntity {
  const _$LogEntityImpl({this.level, this.time, required this.message});

  @override
  final LogLevel? level;
  @override
  final DateTime? time;
  @override
  final String message;

  @override
  String toString() {
    return 'LogEntity(level: $level, time: $time, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogEntityImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, level, time, message);

  /// Create a copy of LogEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogEntityImplCopyWith<_$LogEntityImpl> get copyWith =>
      __$$LogEntityImplCopyWithImpl<_$LogEntityImpl>(this, _$identity);
}

abstract class _LogEntity implements LogEntity {
  const factory _LogEntity(
      {final LogLevel? level,
      final DateTime? time,
      required final String message}) = _$LogEntityImpl;

  @override
  LogLevel? get level;
  @override
  DateTime? get time;
  @override
  String get message;

  /// Create a copy of LogEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogEntityImplCopyWith<_$LogEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
