import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../pages/settings/settings.dart';

class NavDraw extends StatelessWidget {
  final Function(int)? onPageSelected;

  const NavDraw({super.key, this.onPageSelected});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final currentRoute = ModalRoute.of(context)?.settings.name;

    return Drawer(
      shape: const BeveledRectangleBorder(),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text(
              'correo@gmail.com',
              style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onPrimary
              ),
            ),
            accountName: Text(
              'Nombre',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
                backgroundColor: colorScheme.secondary,
                child: Icon(Icons.person)
            ),
            decoration: BoxDecoration(
              color: colorScheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 12.0, right: 12.0),
            child: Column(
              children: [
                _buildItem(
                  icon: Icons.home,
                  title: 'Menu Principal',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  selected: currentRoute == '/home',
                  context: context,
                ),
                _buildItem(
                  icon: Icons.money,
                  title: 'Finanzas',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/finances');
                  },
                  selected: currentRoute == '/finances',
                  context: context,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 16, // Ancho del espacio reservado para el ícono
                    ),
                    Text(
                      'Vista Detallada',
                      style:
                        theme.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface.withOpacity(0.7),
                        fontSize: theme.textTheme.bodyMedium?.fontSize,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                _buildItem(
                  icon: Icons.car_repair,
                  title: 'Ambientes',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/environment');
                  },
                  selected: currentRoute == '/environment',
                  context: context,
                ),
                _buildItem(
                  icon: Icons.contacts,
                  title: 'Contactos',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/contacts');
                  },
                  selected: currentRoute == '/contacts',
                  context: context,
                ),
                _buildItem(
                  icon: Icons.settings,
                  title: 'Servicios',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/service');
                  },
                  selected: currentRoute == '/service',
                  context: context,
                ),
                _buildItem(
                  icon: Icons.car_repair,
                  title: 'Vehiculos',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/vehicles');
                  },
                  selected: currentRoute == '/vehicles',
                  context: context,
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Column(
              children: [
                _buildItem(
                  icon: Icons.settings,
                  title: 'Configuracion',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      PageTransition(child: SettingsPage(), type: PageTransitionType.rightToLeftWithFade),
                    );
                  },
                  selected: currentRoute == '/settings',
                  context: context,
                ),
                _buildItem(
                  icon: Icons.help,
                  title: 'Ayuda y Comentarios',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      PageTransition(child: SettingsPage(), type: PageTransitionType.rightToLeftWithFade),
                    );
                  },
                  selected: currentRoute == '/settings',
                  context: context,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildItem({
    required IconData icon,
    required String title,
    required GestureTapCallback onTap,
    required bool selected,
    required BuildContext context,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Material(
      color: Colors.transparent, // Fondo inicial transparente
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(24), // Redondeo para hover y ripple
        splashColor: colorScheme.primary.withOpacity(0.2),
        hoverColor: colorScheme.primary.withOpacity(0.1),
        child: Container(
          decoration: BoxDecoration(
            color: selected ? colorScheme.primary.withOpacity(0.1) : null, // Fondo si está seleccionado
            borderRadius: BorderRadius.circular(24), // Borde redondeado
            border: selected
                ? Border.all(
              color: colorScheme.primary, // Color del borde al seleccionar
              width: 2.0, // Grosor del borde
            )
                : null,
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: Icon(
              icon,
              color: selected ? colorScheme.primary : theme.iconTheme.color,
            ),
            title: Text(
              title,
              style: TextStyle(
                color: selected ? colorScheme.primary : theme.textTheme.bodyMedium?.color,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            minLeadingWidth: 5,
          ),
        ),
      ),
    );
  }
}