import 'package:flutter/material.dart';
import 'subpages/theme_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.palette),
            title: const Text('Cambiar tema'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThemePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Cambiar idioma'),
            onTap: () {
              // Acción para cambiar idioma
            },
          ),
          ListTile(
            leading: const Icon(Icons.data_array),
            title: const Text('Base de Datos'),
            onTap: () {
            },
          ),
          SwitchListTile(
            title: const Text('Notificaciones'),
            value: true, // Estado actual del interruptor
            onChanged: (bool value) {
              // Acción al cambiar el interruptor
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Acerca Del Software'),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
