import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_ot/pages/environment/environment.dart';
import 'package:open_ot/pages/finances/finances.dart';
import 'package:open_ot/pages/contacts/contacts.dart';
import 'package:open_ot/pages/service/service.dart';
import 'package:open_ot/pages/vehicles/vehicles.dart';
import 'pages/home/home.dart';

import 'data/local/db/database.dart';
import 'data/local/db/initializer/country_initializer.dart';
import 'data/local/db/initializer/environment_type_initializer.dart';
import 'data/themes/blue_theme.dart';
import 'data/controllers/theme_controller.dart';

// Controlador para el tema
final themeController = Get.put(ThemeController());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa el controlador de temas
  await themeController.loadThemePreference(); // Cargar preferencia del tema

  // Inicializa la base de datos
  final db = Database();
  await db.customStatement('PRAGMA foreign_keys = ON');

  final countryInitializer = CountryInitializer(db);
  await countryInitializer.insertDefaultCountries();

  final environmentTypeInitializer = EnvironmentTypeInitializer(db);
  await environmentTypeInitializer.insertDefaultEnvironmentTypes();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = BlueMaterialTheme(Theme.of(context).textTheme);

    return Obx(() => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
      theme: theme.light(),
      darkTheme: theme.dark(),
      themeMode: themeController.themeMode.value,
      getPages: [
        GetPage(name: '/home', page: () => const MainMenu()),
        GetPage(name: '/finances', page: () => const FinancesPage()),
        GetPage(name: '/environment', page: () => const EnvironmentPage()),
        GetPage(name: '/contacts', page: () => const ContactsPage()),
        GetPage(name: '/service', page: () => const ServicePage()),
        GetPage(name: '/vehicles', page: () => const VehiclesPage()),
      ],
      initialRoute: '/home',
    ));
    }
}