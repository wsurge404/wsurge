import 'package:drift/drift.dart';
import 'package:fpdart/fpdart.dart';
import 'package:wsurge/core/database/app_database.dart';
import 'package:wsurge/core/database/tables/database_tables.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:uuid/uuid.dart';
import 'package:wsurge/core/mitm/data/mitm_failure.dart';
import 'package:wsurge/core/mitm/data/mitm_rule_mapper.dart';
import 'package:wsurge/core/mitm/model/mitm_rule_entity.dart';
import 'package:wsurge/utils/exception_handler.dart';
part 'mitm_rule_source.g.dart';

abstract interface class MitmRuleSource {
  Stream<Either<MitmFailure, List<MitmRuleEntity>>> watchAll();
  Future<List<MitmRuleEntry>> getAllSync();

  TaskEither<MitmFailure, Unit> save(MitmRuleEntity entity);
  TaskEither<MitmFailure, Unit> deleteById(String id);
}

@DriftAccessor(tables: [MitmRuleEntries])
class MitmRuleDao extends DatabaseAccessor<AppDatabase>
    with _$MitmRuleDaoMixin, InfraLogger
    implements MitmRuleSource {
  MitmRuleDao(super.db);

  @override
  TaskEither<MitmFailure, Unit> deleteById(String id){
    return TaskEither.tryCatch(
          () async {
            await transaction(
                  () async {
                await (delete(mitmRuleEntries)..where((tbl) => tbl.id.equals(id))).go();
              },
            );
        return unit;
      },
      MitmUnexpectedFailure.new,
    );

  }

  @override
  TaskEither<MitmFailure, Unit> save(MitmRuleEntity entity){
    return TaskEither.tryCatch(
          () async {
        await await transaction(
              () async {
            if (entity.id == null) {
              await update(mitmRuleEntries).write(entity.toEntry(entity.id!));
            } else {
              var id = Uuid().v4();
              await into(mitmRuleEntries).insert(entity.toEntry(id));
            }
          },
        );
        return unit;
      },
      MitmUnexpectedFailure.new,
    );

  }

  @override
  Stream<Either<MitmFailure, List<MitmRuleEntity>>> watchAll(){
    return mitmRuleEntries.select().watch()
        .map((event) => event.map((e) => e.toEntity()).toList())
        .handleExceptions(MitmUnexpectedFailure.new);
  }

  @override
  Future<List<MitmRuleEntry>> getAllSync() {
   return  mitmRuleEntries.select().get();
  }
}
