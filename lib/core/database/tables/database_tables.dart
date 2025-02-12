import 'package:dartx/dartx.dart';
import 'package:drift/drift.dart';

import '../app_database.dart';

enum ProfileType { remote, local }

@DataClassName('ProfileEntry')
class ProfileEntries extends Table {
  TextColumn get id => text()();

  TextColumn get type => textEnum<ProfileType>()();

  BoolColumn get active => boolean()();

  TextColumn get name => text().withLength(min: 1)();

  TextColumn get url => text().nullable()();

  DateTimeColumn get lastUpdate => dateTime()();

  IntColumn get updateInterval =>
      integer().nullable().map(DurationTypeConverter())();

  IntColumn get upload => integer().nullable()();

  IntColumn get download => integer().nullable()();

  IntColumn get total => integer().nullable()();

  DateTimeColumn get expire => dateTime().nullable()();

  TextColumn get webPageUrl => text().nullable()();

  TextColumn get supportUrl => text().nullable()();

  TextColumn get testUrl => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('MitmHostEntry')
class MitmHostEntries extends Table {
  TextColumn get id => text()();

  BoolColumn get enable => boolean()();

  TextColumn get hostname => text().withLength(min: 1)();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('MitmConfigEntry')
class MitmConfigEntries extends Table {
  TextColumn get id => text()();

  BoolColumn get enable => boolean()();

  TextColumn get certFile => text().nullable()();

  TextColumn get keyFile => text().nullable()();

  DateTimeColumn get lastUpdate => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

enum MitmRuleType {
  scriptsResponseBody,
  scriptsRequestBody,
  redirect;

 static MitmRuleType getByName(String name) {
    return MitmRuleType.values
        .filter((it) => it.name == name)
        .firstOrDefault(MitmRuleType.redirect);
  }
}

@DataClassName('MitmRuleEntry')
class MitmRuleEntries extends Table {
  TextColumn get id => text()();

  BoolColumn get enable => boolean()();

  TextColumn get type => textEnum<MitmRuleType>()();

  TextColumn get name => text().nullable()();

  TextColumn get urlRegex => text().nullable()();

  TextColumn get scriptsPath => text().nullable()();

  TextColumn get replaceContent => text().nullable()();

  DateTimeColumn get lastUpdate => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}
