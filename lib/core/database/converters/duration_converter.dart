part of '../app_database.dart';

class DurationTypeConverter extends TypeConverter<Duration, int> {
  @override
  Duration fromSql(int fromDb) {
    return Duration(seconds: fromDb);
  }

  @override
  int toSql(Duration value) {
    return value.inSeconds;
  }
}
