// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StatSummary {
  int get uplink => throw _privateConstructorUsedError;
  int get downlink => throw _privateConstructorUsedError;

  /// Create a copy of StatSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatSummaryCopyWith<StatSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatSummaryCopyWith<$Res> {
  factory $StatSummaryCopyWith(
          StatSummary value, $Res Function(StatSummary) then) =
      _$StatSummaryCopyWithImpl<$Res, StatSummary>;
  @useResult
  $Res call({int uplink, int downlink});
}

/// @nodoc
class _$StatSummaryCopyWithImpl<$Res, $Val extends StatSummary>
    implements $StatSummaryCopyWith<$Res> {
  _$StatSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uplink = null,
    Object? downlink = null,
  }) {
    return _then(_value.copyWith(
      uplink: null == uplink
          ? _value.uplink
          : uplink // ignore: cast_nullable_to_non_nullable
              as int,
      downlink: null == downlink
          ? _value.downlink
          : downlink // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatSummaryImplCopyWith<$Res>
    implements $StatSummaryCopyWith<$Res> {
  factory _$$StatSummaryImplCopyWith(
          _$StatSummaryImpl value, $Res Function(_$StatSummaryImpl) then) =
      __$$StatSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int uplink, int downlink});
}

/// @nodoc
class __$$StatSummaryImplCopyWithImpl<$Res>
    extends _$StatSummaryCopyWithImpl<$Res, _$StatSummaryImpl>
    implements _$$StatSummaryImplCopyWith<$Res> {
  __$$StatSummaryImplCopyWithImpl(
      _$StatSummaryImpl _value, $Res Function(_$StatSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uplink = null,
    Object? downlink = null,
  }) {
    return _then(_$StatSummaryImpl(
      uplink: null == uplink
          ? _value.uplink
          : uplink // ignore: cast_nullable_to_non_nullable
              as int,
      downlink: null == downlink
          ? _value.downlink
          : downlink // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StatSummaryImpl extends _StatSummary {
  const _$StatSummaryImpl({required this.uplink, required this.downlink})
      : super._();

  @override
  final int uplink;
  @override
  final int downlink;

  @override
  String toString() {
    return 'StatSummary(uplink: $uplink, downlink: $downlink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatSummaryImpl &&
            (identical(other.uplink, uplink) || other.uplink == uplink) &&
            (identical(other.downlink, downlink) ||
                other.downlink == downlink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uplink, downlink);

  /// Create a copy of StatSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatSummaryImplCopyWith<_$StatSummaryImpl> get copyWith =>
      __$$StatSummaryImplCopyWithImpl<_$StatSummaryImpl>(this, _$identity);
}

abstract class _StatSummary extends StatSummary {
  const factory _StatSummary(
      {required final int uplink,
      required final int downlink}) = _$StatSummaryImpl;
  const _StatSummary._() : super._();

  @override
  int get uplink;
  @override
  int get downlink;

  /// Create a copy of StatSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatSummaryImplCopyWith<_$StatSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
