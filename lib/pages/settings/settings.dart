import 'package:flutter/material.dart';

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
              // Acción para cambiar el tema
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
