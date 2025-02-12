import 'package:drift/drift.dart';
import 'package:fpdart/fpdart.dart';
import 'package:wsurge/core/database/app_database.dart';
import 'package:wsurge/core/database/tables/database_tables.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:uuid/uuid.dart';
import 'package:wsurge/core/mitm/data/mitm_failure.dart';
import 'package:wsurge/core/mitm/data/mitm_host_mapper.dart';
import 'package:wsurge/core/mitm/model/mitm_host_entity.dart';
import 'package:wsurge/utils/exception_handler.dart';

part 'mitm_host_source.g.dart';

abstract interface class MitmHostSource {
  Stream<Either<MitmFailure, List<MitmHostEntity>>> watchAll();
  Future<List<MitmHostEntry>> getSync();

  TaskEither<MitmFailure, Unit> save(MitmHostEntity entity);
  TaskEither<MitmFailure, Unit> deleteById(String id);
}

@DriftAccessor(tables: [MitmHostEntries])
class MitmHostDao extends DatabaseAccessor<AppDatabase>
    with _$MitmHostDaoMixin, InfraLogger
    implements MitmHostSource {
  MitmHostDao(super.db);

  @override
  TaskEither<MitmFailure, Unit> deleteById(String id) {
    return TaskEither.tryCatch(
      () async {
        await transaction(
          () async {
            await (delete(mitmHostEntries)..where((tbl) => tbl.id.equals(id)))
                .go();
          },
        );
        return unit;
      },
      MitmUnexpectedFailure.new,
    );
  }

  @override
  TaskEither<MitmFailure, Unit> save(MitmHostEntity entity){
    return TaskEither.tryCatch(
          () async {
            await transaction(
                  () async {
                if (entity.id != null) {
                  await update(mitmHostEntries).write(entity.toEntry(entity.id!));
                } else {
                  var id = Uuid().v4();
                  await into(mitmHostEntries).insert(entity.toEntry(id));
                }
              },
            );
        return unit;
      },
      MitmUnexpectedFailure.new,
    );

  }

  @override
  Stream<Either<MitmFailure, List<MitmHostEntity>>> watchAll(){
    return mitmHostEntries.select().watch()
        .map((event) => event.map((e) => e.toEntity()).toList())
        .handleExceptions(MitmUnexpectedFailure.new);
  }

  @override
  Future<List<MitmHostEntry>> getSync() {
    return  mitmHostEntries.select().get();
  }
}
