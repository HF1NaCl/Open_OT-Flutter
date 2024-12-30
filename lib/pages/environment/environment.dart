import 'package:flutter/material.dart';
import '../../widgets/nav_drawer.dart';
import '../../data/local/db/database.dart'; // Asegúrate de importar tu base de datos.
import 'package:intl/intl.dart'; // Para formatear la fecha.

class EnvironmentPage extends StatelessWidget {
  final bool isEmbedded;

  const EnvironmentPage({super.key, this.isEmbedded = false});

  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'No hay datos disponibles.\nEmpiece a crear un Ambiente.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _showCountryDialog(context);
              },
              child: const Text('Agregar Ambiente'),
            ),
          ],
        ),
      ),
    );

    if (isEmbedded) {
      return content;
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Ambientes'),
        ),
        drawer: NavDraw(onPageSelected: (int index) {}),
        body: content,
      );
    }
  }

  void _showCountryDialog(BuildContext context) async {
    final db = Database();
    final countries = await db.getCountries();
    final environmentTypes = await db.getEnvironmentTypes();

    String? selectedCountry;
    String name = '';
    int? selectedEnvironmentType;

    // Variables para manejar el estado de las casillas de verificación
    bool useVehicles = false;
    bool contactCompanies = false;
    bool limitLocally = false;
    bool exclusiveCountry = false;

    String currentDate = DateFormat('yyyyMMdd').format(DateTime.now());

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Crear Ambiente'),
          content: countries.isEmpty
              ? const Text('No hay países disponibles.')
              : StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    decoration: const InputDecoration(
                      labelText: 'Nombre del Ambiente',
                    ),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<int>(
                    value: selectedEnvironmentType ?? 0,
                    decoration: InputDecoration(
                      labelText: 'Tipo de Ambiente',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                    ),
                    hint: const Text('Elige un Tipo Ambiente'),
                    items: [
                      DropdownMenuItem<int>(
                        value: 0,
                        child: Text('Ninguno'),
                      ),
                      ...environmentTypes.map((environmentType) {
                        return DropdownMenuItem<int>(
                          value: environmentType.id,
                          child: Text(environmentType.nameEnvironmentType),
                        );
                      }).toList(),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedEnvironmentType = value;
                      });
                    },
                    icon: Icon(Icons.arrow_drop_down, color: Theme.of(context).primaryColor),
                    dropdownColor: Theme.of(context).canvasColor,
                  ),
                  const SizedBox(height: 16.0),
                  DropdownButtonFormField<String>(
                    value: selectedCountry,
                    decoration: InputDecoration(
                      labelText: 'País',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                    ),
                    hint: const Text('Elige un país'),
                    items: countries.map((country) {
                      return DropdownMenuItem<String>(
                        value: country.nameCountry,
                        child: Text(country.nameCountry),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCountry = value;
                      });
                    },
                    icon: Icon(Icons.arrow_drop_down, color: Theme.of(context).primaryColor),
                    dropdownColor: Theme.of(context).canvasColor,
                  ),
                  const SizedBox(height: 16),
                  CheckboxListTile(
                    title: const Text('Usa Vehículos'),
                    value: useVehicles,
                    onChanged: (bool? value) {
                      setState(() {
                        useVehicles = value ?? false;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('Se contacta con Empresas.'),
                    value: contactCompanies,
                    onChanged: (bool? value) {
                      setState(() {
                        contactCompanies = value ?? false;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('Se limita localmente.'),
                    value: limitLocally,
                    onChanged: (bool? value) {
                      setState(() {
                        limitLocally = value ?? false;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('Es exclusivo del País.'),
                    value: exclusiveCountry,
                    onChanged: (bool? value) {
                      setState(() {
                        exclusiveCountry = value ?? false;
                      });
                    },
                  ),
                  SizedBox(
                    height: 0,
                    width: 0,
                    child: TextField(
                      controller: TextEditingController(text: currentDate),
                      readOnly: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                if (selectedCountry != null && name.isNotEmpty) {
                  print('País seleccionado: $selectedCountry');
                  print('Nombre del ambiente: $name');
                  print('Fecha (hidden): $currentDate');
                  print('Usa Vehículos: $useVehicles');
                  print('Se contacta con Empresas: $contactCompanies');
                  print('Se limita localmente: $limitLocally');
                  print('Es exclusivo del País: $exclusiveCountry');
                }
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}