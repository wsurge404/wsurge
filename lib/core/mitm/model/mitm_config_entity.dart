import 'package:freezed_annotation/freezed_annotation.dart';

part 'mitm_config_entity.freezed.dart';

@freezed
sealed class MitmConfigEntity with _$MitmConfigEntity {
  const MitmConfigEntity._();

  // TODO add cert time
  const factory MitmConfigEntity.config({
    String? id,
    required bool enable,
    String? certFile,
    String? keyFile,
    required DateTime lastUpdate,
  }) = _MitmConfigEntity;
}
