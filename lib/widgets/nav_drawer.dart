import 'package:flutter/material.dart';
import 'package:open_ot/pages/home/home.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/settings/settings.dart';
import '../pages/finances/finances.dart';

class NavDraw extends StatelessWidget {
  final Function(int)? onPageSelected;

  const NavDraw({super.key, this.onPageSelected});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Drawer(
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
          _buildItem(
              icon: Icons.money,
              title: 'Finanzas',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  PageTransition(child: FinancesPage(), type: PageTransitionType.fade),
                );
              }
          ),
          Divider(),
          _buildItem(
              icon: Icons.account_tree,
              title: 'Ambientes',
              onTap: () {
                Navigator.pop(context);
                _navigateToPage(context, 0);
              }
          ),
          _buildItem(
              icon: Icons.person,
              title: 'Contactos',
              onTap: () {
                Navigator.pop(context);
                _navigateToPage(context, 1);
              }
          ),
          _buildItem(
              icon: Icons.task_rounded,
              title: 'Servicios',
              onTap: () {
                Navigator.pop(context);
                _navigateToPage(context, 2);
              }
          ),
          Divider(),
          _buildItem(
              icon: Icons.car_repair,
              title: 'Vehiculos',
              onTap: ()=> ''
          ),
          Divider(),
          _buildItem(
              icon: Icons.settings,
              title: 'Configuracion',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  PageTransition(child: SettingsPage(), type: PageTransitionType.rightToLeftWithFade),
                );
              }
          ),
        ],
      ),
    );
  }

  _buildItem({required IconData icon,required String title,required GestureTapCallback onTap}){
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
      minLeadingWidth: 5,
    );
  }

  void _navigateToPage(BuildContext context, int index) {
    if (context.findAncestorWidgetOfExactType<MainMenu>() != null) {
      onPageSelected?.call(index);
    } else {
      Navigator.pop(context);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainMenu(initialIndex: index)
        )
      );
    }
  }
}
