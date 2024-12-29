import 'package:drift/drift.dart';
import '../database.dart';

class EnvironmentTypeInitializer {
  final Database _db;

  EnvironmentTypeInitializer(this._db);

  Future<void> insertDefaultEnvironmentTypes() async {
    final existingEnvironmentTypes = await _db.select(_db.environmentType).get();

    if (existingEnvironmentTypes.isEmpty){
      await _db.batch((batch) {
        batch.insertAll(
          _db.environmentType,
          [
            EnvironmentTypeCompanion(nameEnvironmentType: Value('Fletes'), isUsingCar: Value(true), isUsingBusinesses: Value(true), isExclusiveLocal: Value(false), isNational: Value(true))
          ],
        );
      });
    }
  }
}