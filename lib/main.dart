import 'package:flutter/material.dart';
import 'package:open_ot/pages/environment/environment.dart';
import 'package:open_ot/pages/finances/finances.dart';
import 'package:open_ot/pages/contacts/contacts.dart';
import 'package:open_ot/pages/service/service.dart';
import 'package:open_ot/pages/vehicles/vehicles.dart';
import 'pages/home/home.dart';

import 'data/local/db/database.dart';
import 'data/local/db/initializer/country_initializer.dart';
import 'data/local/db/initializer/environment_type_initializer.dart';

final ValueNotifier<String> currentRouteNotifier = ValueNotifier<String>('/home');

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Necesario para inicializar código asincrónico.

  // Inicializa la base de datos.
  final db = Database();

  // Habilita claves foráneas (opcional, si lo necesitas).
  await db.customStatement('PRAGMA foreign_keys = ON');

  // Inserta los países iniciales.
  final countryInitializer = CountryInitializer(db);
  await countryInitializer.insertDefaultCountries();

  final environmentTypeInitializer = EnvironmentTypeInitializer(db);
  await environmentTypeInitializer.insertDefaultEnvironmentTypes();

  runApp(const MyApp());
}

class FadePageTransitionsBuilder extends PageTransitionsBuilder {
  const FadePageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    return FadeTransition(opacity: animation, child: child);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple.shade700,
          foregroundColor: Colors.white,
          elevation: 4,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadePageTransitionsBuilder(),
            TargetPlatform.iOS: FadePageTransitionsBuilder(),
          },
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.dark,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red.shade700,
          foregroundColor: Colors.white,
          elevation: 4,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadePageTransitionsBuilder(),
            TargetPlatform.iOS: FadePageTransitionsBuilder(),
          },
        ),
      ),
      routes: {
        '/home': (context) => const MainMenu(),
        '/finances': (context) => const FinancesPage(),
        '/environment': (context) => const EnvironmentPage(),
        '/contacts': (context) => const ContactsPage(),
        '/service': (context) => const ServicePage(),
        '/vehicles': (context) => const VehiclesPage()
      },
      initialRoute: '/home',
    );
  }
}