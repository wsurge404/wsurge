
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mitm_host_entity.freezed.dart';
@freezed
sealed class MitmHostEntity with _$MitmHostEntity {
  const MitmHostEntity._();

  const factory MitmHostEntity.host({
    String? id,
    required String hostname,
    required bool enable
  }) = _MitmHostEntity;
}
