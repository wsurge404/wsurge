import 'package:drift/drift.dart';
import 'package:wsurge/core/database/app_database.dart';
import 'package:wsurge/core/mitm/model/mitm_config_entity.dart';

extension MitmConfigEntityMapper on MitmConfigEntity {
  MitmConfigEntriesCompanion toEntry(String configId) {
    return MitmConfigEntriesCompanion.insert(
      id: configId,
      certFile: Value(certFile),
      keyFile: Value(keyFile),
      enable: enable,
      lastUpdate: lastUpdate
    );
  }
}
extension MitmConfigEntryMapper on MitmConfigEntry {
  MitmConfigEntity toEntity() {
    return MitmConfigEntity.config(id: id, enable: enable, lastUpdate: lastUpdate);
  }
}
