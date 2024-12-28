import 'package:flutter/material.dart';
import '../environment/environment.dart';
import '../contacts/contacts.dart';
import '../service/service.dart';
import '../../widgets/nav_drawer.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int currentPageIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> pages = const [
    EnvironmentPage(isEmbedded: true), // Página embebida
    ContactsPage(isEmbedded: true),   // Ajusta de forma similar en otras páginas
    ServicePage(isEmbedded: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(['Ambientes', 'Contactos', 'Servicios'][currentPageIndex]),
      ),
      drawer: NavDraw(
        onPageSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.account_tree), label: 'Ambientes'),
          NavigationDestination(icon: Icon(Icons.contacts), label: 'Contactos'),
          NavigationDestination(icon: Icon(Icons.task), label: 'Servicios'),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        children: pages,
      ),
    );
  }
}