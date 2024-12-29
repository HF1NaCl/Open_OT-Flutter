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
          ],
        );
      }),
    );
  }
}