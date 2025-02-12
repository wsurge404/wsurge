import 'package:wsurge/core/database/app_database.dart';
import 'package:wsurge/core/mitm/model/mitm_host_entity.dart';

extension MitmHostEntityMapper on MitmHostEntity {
  MitmHostEntriesCompanion toEntry(String hostId) {
    return MitmHostEntriesCompanion.insert(
      id: hostId,
      hostname: hostname,
      enable: enable,
    );
  }
}
extension MitmHostEntryMapper on MitmHostEntry {
  MitmHostEntity toEntity() {
    return MitmHostEntity.host(id: id, hostname: hostname, enable: enable);
  }
}