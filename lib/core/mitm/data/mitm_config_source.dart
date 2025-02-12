import 'package:drift/drift.dart';
import 'package:fpdart/fpdart.dart';
import 'package:wsurge/core/database/app_database.dart';
import 'package:wsurge/core/database/tables/database_tables.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:uuid/uuid.dart';
import 'package:wsurge/utils/exception_handler.dart';

import '../model/mitm_config_entity.dart';
import 'mitm_failure.dart';
import 'mitm_config_mapper.dart';

part 'mitm_config_source.g.dart';

abstract interface class MitmConfigSource {
  Stream<Either<MitmFailure, MitmConfigEntity?>> get();
  Future<MitmConfigEntry?> getAsync();
  TaskEither<MitmFailure, Unit> save(MitmConfigEntity entry);
}

@DriftAccessor(tables: [MitmConfigEntries])
class MitmConfigDao extends DatabaseAccessor<AppDatabase>
    with _$MitmConfigDaoMixin, InfraLogger
    implements MitmConfigSource {
  MitmConfigDao(super.db);

  @override
  Stream<Either<MitmFailure, MitmConfigEntity?>> get() {
    return (mitmConfigEntries.select()
      ..limit(1))
        .watchSingleOrNull().map((event) => event?.toEntity())
        .handleExceptions(MitmUnexpectedFailure.new);;
  }

  @override
  TaskEither<MitmFailure, Unit> save(MitmConfigEntity entry) {
    return TaskEither.tryCatch(
      () async {
        await await transaction(
          () async {
            if (entry.id != null) {
              await update(mitmConfigEntries).write(entry.toEntry(entry.id!));
            } else {
              final configId = const Uuid().v4();
              await into(mitmConfigEntries)
                  .insert(entry.toEntry(configId));
            }
          },
        );
        return unit;
      },
      MitmUnexpectedFailure.new,
    );
  }


  @override
  Future<MitmConfigEntry?> getAsync() {
    return  (mitmConfigEntries.select()
      ..limit(1)).getSingleOrNull();
  }

// @override
// Future<void> edit(MitmConfigEntriesCompanion entry) async {
//   await transaction(
//         () async {
//
//       if (entry.active.present && entry.active.value) {
//         await update(profileEntries)
//             .write(const ProfileEntriesCompanion(active: Value(false)));
//       }
//       await (update(profileEntries)..where((tbl) => tbl.id.equals(id)))
//           .write(entry.copyWith(lastUpdate: Value(DateTime.now())));
//     },
//   );
// }
}
