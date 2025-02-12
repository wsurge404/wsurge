import 'package:drift/drift.dart';
import 'package:wsurge/core/database/app_database.dart';

import '../model/mitm_rule_entity.dart';

extension MitmRuleEntityMapper on MitmRuleEntity {
  MitmRuleEntriesCompanion toEntry(String ruleId) {
    return MitmRuleEntriesCompanion.insert(
      id: ruleId,
      type: type,
      enable: enable,
      name: Value(name),
      urlRegex: Value(urlRegex),
      scriptsPath: Value(scriptsPath),
      replaceContent: Value(replaceContent),
      lastUpdate: lastUpdate,
    );
  }
}

extension MitmRuleEntryMapper on MitmRuleEntry {
  MitmRuleEntity toEntity() {
    return MitmRuleEntity.config(
      id: id,
      enable: enable,
      type: type,
      lastUpdate: lastUpdate,
      name: name,
      replaceContent: replaceContent,
      scriptsPath: scriptsPath,
      urlRegex: urlRegex,
    );
  }
}
