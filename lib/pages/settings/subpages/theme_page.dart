import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/controllers/theme_controller.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenemos el controlador del tema
    final themeController = Get.find<ThemeController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccionar Tema'),
      ),
      body: Obx(() {
        final currentTheme = themeController.themeMode.value; // Tema actual
        return ListView(
          children: [
            // Opción para tema claro
            RadioListTile<ThemeMode>(
              title: const Text('Tema Claro'),
              value: ThemeMode.light,
              groupValue: currentTheme,
              onChanged: (ThemeMode? value) {
                if (value != null) {
                  themeController.setTheme(value);
                }
              },
            ),
            // Opción para tema oscuro
            RadioListTile<ThemeMode>(
              title: const Text('Tema Oscuro'),
              value: ThemeMode.dark,
              groupValue: currentTheme,
              onChanged: (ThemeMode? value) {
                if (value != null) {
                  themeController.setTheme(value);
                }
              },
            ),
            // Opción para tema del sistema
            RadioListTile<ThemeMode>(
              title: const Text('Tema del Sistema'),
              value: ThemeMode.system,
              groupValue: currentTheme,
              onChanged: (ThemeMode? value) {
                if (value != null) {
                  themeController.setTheme(value);
                }
              },
            ),
            const Divider(),
            // Opción para elegir un color
            Row(
              children: const [
                SizedBox(width: 28), // Mueve el texto un poco a la derecha
                Text(
                  'Selecciona un Color:',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 16), // Espacio entre el texto y los círculos
            // Fila de colores
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Color 1
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.blueAccent,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 10,
                    ),
                  ),
                ),
                // Color 2
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.greenAccent,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 10,
                    ),
                  ),
                ),
                // Color 3
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.redAccent,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 10,
                    ),
                  ),
                ),
                // Color 4
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.orangeAccent,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 10,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}