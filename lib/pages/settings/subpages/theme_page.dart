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
        // Usamos el tema actual, ya sea del sistema o de la app
        final currentTheme = themeController.themeMode.value;

        // Si el tema es del sistema, obtenemos el tema actual del sistema
        ThemeMode effectiveTheme = currentTheme == ThemeMode.system
            ? (MediaQuery.of(context).platformBrightness == Brightness.dark
            ? ThemeMode.dark
            : ThemeMode.light)
            : currentTheme;

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
            Divider(),
            // Ejemplos visuales después del Divider
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Ejemplo de un contenedor con texto
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: effectiveTheme == ThemeMode.dark
                          ? Colors.grey[850]
                          : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Este es un ejemplo del Tema a mostrar',
                      style: TextStyle(
                        color: effectiveTheme == ThemeMode.dark
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Ejemplo de un ícono
                  Icon(
                    Icons.lightbulb,
                    color: effectiveTheme == ThemeMode.dark
                        ? Colors.yellow
                        : Colors.blue,
                    size: 48,
                  ),
                  const SizedBox(height: 16),
                  // Ejemplo de un texto
                  Text(
                    'Texto de ejemplo para ver cómo cambia el tema',
                    style: TextStyle(
                      color: effectiveTheme == ThemeMode.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
