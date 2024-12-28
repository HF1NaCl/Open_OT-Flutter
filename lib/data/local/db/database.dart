import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'database.g.dart';

@DriftDatabase(
  include: {'tables.drift'},
)
class Database extends _$Database {
  Database() : super(_openConnection());

  Future<int> addCountry(CountryCompanion companion) async {
    try {
      return await into(country).insert(companion);
    } catch (e) {
      return -1;
    }
  }

  @override
  int get schemaVersion => 1;
}
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'database.db'));
    return NativeDatabase.createInBackground(file);
  });
}
