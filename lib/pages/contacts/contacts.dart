import 'package:flutter/material.dart';
import '../../widgets/nav_drawer.dart';

class ContactsPage extends StatelessWidget {
  final bool isEmbedded; // Determina si se renderiza dentro de otra página.

  const ContactsPage({super.key, this.isEmbedded = false});

  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: const Text(
        'Página de Contactos',
        style: TextStyle(fontSize: 18),
      ),
    );

    if (isEmbedded) {
      // Si está embebido, solo devuelve el contenido.
      return content;
    } else {
      // Si es una página independiente, envuelve el contenido con Scaffold.
      return Scaffold(
        appBar: AppBar(
          title: const Text('Contactos'),
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
}