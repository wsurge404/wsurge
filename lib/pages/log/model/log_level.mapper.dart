// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'log_level.dart';

class LogLevelMapper extends EnumMapper<LogLevel> {
  LogLevelMapper._();

  static LogLevelMapper? _instance;
  static LogLevelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LogLevelMapper._());
    }
    return _instance!;
  }

  static LogLevel fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  LogLevel decode(dynamic value) {
    switch (value) {
      case 'trace':
        return LogLevel.trace;
      case 'debug':
        return LogLevel.debug;
      case 'info':
        return LogLevel.info;
      case 'warn':
        return LogLevel.warn;
      case 'error':
        return LogLevel.error;
      case 'fatal':
        return LogLevel.fatal;
      case 'panic':
        return LogLevel.panic;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(LogLevel self) {
    switch (self) {
      case LogLevel.trace:
        return 'trace';
      case LogLevel.debug:
        return 'debug';
      case LogLevel.info:
        return 'info';
      case LogLevel.warn:
        return 'warn';
      case LogLevel.error:
        return 'error';
      case LogLevel.fatal:
        return 'fatal';
      case LogLevel.panic:
        return 'panic';
    }
  }
}

extension LogLevelMapperExtension on LogLevel {
  String toValue() {
    LogLevelMapper.ensureInitialized();
    return MapperContainer.globals.toValue<LogLevel>(this) as String;
  }
}
