import 'package:flutter/material.dart';
import '../../widgets/nav_drawer.dart';
import '../../data/local/db/database.dart'; // Asegúrate de importar tu base de datos.

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
    final countries = await db.select(db.country).get(); // Recupera los países.

    String? selectedCountry; // Variable para almacenar el país seleccionado.

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Selecciona un País'),
          content: countries.isEmpty
              ? const Text('No hay países disponibles.')
              : StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: selectedCountry,
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
                ),
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
                if (selectedCountry != null) {
                  print('País seleccionado: $selectedCountry');
                  // Aquí puedes realizar acciones adicionales con el país seleccionado.
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