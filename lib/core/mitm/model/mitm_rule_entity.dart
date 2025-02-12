import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wsurge/core/database/tables/database_tables.dart';

part 'mitm_rule_entity.freezed.dart';

@freezed
sealed class MitmRuleEntity with _$MitmRuleEntity {
  const MitmRuleEntity._();

  const factory MitmRuleEntity.config({
    String? id,
    required bool enable,
    required MitmRuleType type,
    String? name,
    String? urlRegex,
    String? scriptsPath,
    String? replaceContent,
    required DateTime lastUpdate,
  }) = _MitmRuleEntity;
}
