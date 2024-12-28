import 'package:drift/drift.dart';
import '../database.dart';

class CountryInitializer {
  final Database _db;

  CountryInitializer(this._db);

  /// Inserta los países necesarios en la base de datos.
  Future<void> insertDefaultCountries() async {
    final existingCountries = await _db.select(_db.country).get();

    if (existingCountries.isEmpty) {
      await _db.batch((batch) {
        batch.insertAll(
          _db.country,
          [
            CountryCompanion(nameCountry: Value('Chile')),
            CountryCompanion(nameCountry: Value('Argentina')),
            CountryCompanion(nameCountry: Value('Perú')),
            CountryCompanion(nameCountry: Value('Brasil')),
            CountryCompanion(nameCountry: Value('Uruguay')),
          ],
        );
      });
      print("Países iniciales insertados con éxito.");
    } else {
      print("Países ya existentes, no se insertaron duplicados.");
    }
  }

  /// Imprime todos los países de la base de datos.
  Future<void> printAllCountries() async {
    final countries = await _db.select(_db.country).get();

    print("Países en la base de datos:");
    for (final country in countries) {
      print("- ID: ${country.id}, Nombre: ${country.nameCountry}");
    }
  }
}