import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:wsurge/core/directories/directories_provider.dart';

LazyDatabase openConnection() {
  return LazyDatabase(() async {
    final dbDir = await AppDirectories.getDatabaseDirectory();
    final file = File(p.join(dbDir.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
