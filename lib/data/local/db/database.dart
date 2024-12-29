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

  // Create Country
  Future<int> addCountry(CountryCompanion companion) async {
    try {
      return await into(country).insert(companion);
    } catch (e) {
      return -1;
    }
  }

  // Read Country
  Future<List<CountryData>> getCountries() async {
    return await (select(country)..orderBy([(t) => OrderingTerm.asc(t.nameCountry)]))
        .get(); // Ordenar por 'name_country' alfabéticamente
  }

  //Create Environment Type
  Future<int> addEnvironmentType(EnvironmentTypeCompanion companion) async {
    try {
      return await into(environmentType).insert(companion);
    } catch (e) {
      return -1;
    }
  }

  //Read Environment Type
  Future<List<EnvironmentTypeData>> getEnvironmentTypes() async {
    return await (select(environmentType)..orderBy([(t) => OrderingTerm.asc(t.nameEnvironmentType)]))
        .get();
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
