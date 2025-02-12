import 'package:drift/drift.dart';
import 'package:wsurge/core/database/tables/database_tables.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';

import 'connection/database_connection.dart';

part 'converters/duration_converter.dart';
part 'app_database.g.dart';

@DriftDatabase(tables: [ProfileEntries,MitmHostEntries,MitmRuleEntries,MitmConfigEntries])
class AppDatabase extends _$AppDatabase with InfraLogger {
  AppDatabase({required QueryExecutor connection}) : super(connection);

  AppDatabase.connect() : super(openConnection());

  @override
  int get schemaVersion => 1;
}
