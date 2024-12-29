import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class ThemeController extends GetxController {
  var themeMode = ThemeMode.system.obs; // Usamos ThemeMode en lugar de un bool
  var selectedColor = Colors.blue.obs;

  // Cargar preferencia del tema al iniciar
  Future<void> loadThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    // Cargar el tema guardado o usar el sistema por defecto
    int? savedTheme = prefs.getInt('themeMode');
    if (savedTheme != null) {
      themeMode.value = ThemeMode.values[savedTheme];
    }
  }

  // Guardar preferencia del tema
  Future<void> saveThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    // Guardar el valor entero correspondiente al ThemeMode
    await prefs.setInt('themeMode', themeMode.value.index);
  }

  // Cambiar el tema
  void setTheme(ThemeMode mode) {
    themeMode.value = mode;
    saveThemePreference(); // Guardar la preferencia
  }
}