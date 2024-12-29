import 'package:flutter/material.dart';
import '../../widgets/nav_drawer.dart';
import '../../data/local/db/database.dart'; // Asegúrate de importar tu base de datos.
import 'package:intl/intl.dart'; // Para formatear la fecha.

class EnvironmentPage extends StatelessWidget {
  final bool isEmbedded; // Determina si se renderiza dentro de otra página.

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
      // Si está embebido, solo devuelve el contenido.
      return content;
    } else {
      // Si es una página independiente, envuelve el contenido con Scaffold.
      return Scaffold(
        appBar: AppBar(
          title: const Text('Ambientes'),
        ),
        drawer: NavDraw(
          onPageSelected: (int index) {
            // Navegación desde el drawer
          },
        ),
        body: content,
      );
    }
  }

  void _showCountryDialog(BuildContext context) async {
    final db = Database(); // Inicializa tu base de datos correctamente.
    final countries = await db.getCountries(); // Obtiene los países de la base de datos.
    final environmentTypes = await db.getEnvironmentTypes();

    String? selectedCountry; // Variable para almacenar el país seleccionado.
    String name = ''; // Variable para el nombre ingresado.
    int? selectedEnvironmentType;

    String currentDate = DateFormat('yyyyMMdd').format(DateTime.now()); // Formato de la fecha actual.

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
                  // Input para el nombre
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
                  // Primer DropdownButton
                  // Primer DropdownButton
                  DropdownButtonFormField<int>(
                    value: selectedEnvironmentType ?? 0,  // Valor predeterminado 0
                    decoration: InputDecoration(
                      labelText: 'Tipo de Ambiente',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                    ),
                    hint: const Text('Elige un Tipo Ambiente'),
                    items: [
                      // Puedes agregar un "valor vacío" o predeterminado al inicio si lo deseas.
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
                    value: false,//selectedFeatures.contains('specialFeatures'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          //selectedFeatures.add('specialFeatures');
                        } else {
                          //selectedFeatures.remove('specialFeatures');
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('Se contacta con Empresas.'),
                    value: false, //selectedFeatures.contains('additionalDetails'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          //selectedFeatures.add('additionalDetails');
                        } else {
                          //selectedFeatures.remove('additionalDetails');
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('Se limita localmente.'),
                    value: false, //selectedFeatures.contains('additionalDetails'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          //selectedFeatures.add('additionalDetails');
                        } else {
                          //selectedFeatures.remove('additionalDetails');
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('Es exclusivo del País.'),
                    value: false, //selectedFeatures.contains('additionalDetails'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          //selectedFeatures.add('additionalDetails');
                        } else {
                          //selectedFeatures.remove('additionalDetails');
                        }
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
                        border: InputBorder.none, // Sin borde.
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
                Navigator.of(context).pop(); // Cerrar el cuadro de diálogo.
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                if (selectedCountry != null && name.isNotEmpty) {
                  print('País seleccionado: $selectedCountry');
                  print('Nombre del ambiente: $name');
                  print('Fecha (hidden): $currentDate');
                  // Aquí puedes realizar acciones adicionales con los datos ingresados.
                }
                Navigator.of(context).pop(); // Cerrar el cuadro de diálogo.
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}