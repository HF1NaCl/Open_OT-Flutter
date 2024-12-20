import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
          )
      ),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.red,
              brightness: Brightness.dark
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.red.shade700,
            foregroundColor: Colors.white,
            elevation: 4,
          )
      ),
      home: const MainMenu(),
    );
  }
}

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int currentPageIndex = 0;
  final PageController _pageController = PageController();

  final List<String> pageTitles = [
    'Ambientes',
    'Contactos',
    'Servicios',
  ];

  // Datos de prueba para la lista
  final List<Map<String, String>> ambientesData = [
    {"title": "Sala", "subtitle": "Sala principal con aire acondicionado"},
    {"title": "Cocina", "subtitle": "Cocina equipada con electrodomésticos"},
    {"title": "Dormitorio", "subtitle": "Habitación con cama King Size"},
    {"title": "Baño", "subtitle": "Baño con ducha y bañera"},
    {"title": "Terraza", "subtitle": "Terraza con vista al jardín"},
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitles[currentPageIndex]),
        shadowColor: Colors.grey,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Mostrar SnackBar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Esto es un SnackBar cambiadito')),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeInOut,
          );
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.account_tree),
            label: 'Ambientes',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_sharp),
            label: 'Contactos',
          ),
          NavigationDestination(
            icon: Icon(Icons.task_rounded),
            label: 'Servicios',
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        children: <Widget>[
          ListView.builder(
            itemCount: ambientesData.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: ListTile(
                  leading: const Icon(Icons.home, color: Colors.blue,),
                  title: Text(ambientesData[index]['title']!),
                  subtitle: Text(ambientesData[index]['subtitle']!),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Seleccionaste: ${ambientesData[index]['title']}')),
                    );
                  },
                ),
              );
            },
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(Icons.notifications_sharp),
                    title: Text('Notification 1'),
                    subtitle: Text('This is a notification'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.notifications_sharp),
                    title: Text('Notification 2'),
                    subtitle: Text('This is a notification'),
                  ),
                ),
              ],
            ),
          ),

          ListView.builder(
            reverse: true,
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text('Hello'),
                  ),
                );
              }
              return Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text('Hi!'),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: (currentPageIndex == 0 || currentPageIndex == 1)
        ? FloatingActionButton(
          onPressed: () {
            String message = currentPageIndex == 0
              ? 'FAB 1'
              : 'FAB 2';
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
          child: const Icon(Icons.add),
          )
        : null,
    );
  }
}


