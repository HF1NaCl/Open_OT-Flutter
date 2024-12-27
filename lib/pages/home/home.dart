import 'package:flutter/material.dart';
import '../../widgets/nav_drawer.dart';

class MainMenu extends StatefulWidget {
  final int initialIndex;

  const MainMenu({super.key, this.initialIndex = 0});

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

  List<Map<String, dynamic>> ambientesData = [];

  void _openDynamicModal({
    required BuildContext context,
    required String title,
    required List<Widget> content,
    required List<Widget> actions,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: content,
            ),
          ),
          actions: actions,
        );
      },
    );
  }

  void _handleFabPress(BuildContext context) {
    if (currentPageIndex == 0) {
      _openDynamicModal(
        context: context,
        title: "Crear Ambiente",
        content: [
          TextField(
            decoration: const InputDecoration(labelText: "Nombre"),
          ),
          TextField(
            decoration: const InputDecoration(labelText: "Descripcion"),
          ),
        ],
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              //Logic DB
            },
            child: const Text("Guardar"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cancelar"),
          ),
        ],
      );
    } else if (currentPageIndex == 1) {
      _openDynamicModal(
        context: context,
        title: "Crear/Importar Contacto",
        content: [
          DropdownButtonFormField(
            items: ["Opcion 1", "Opcion 2", "Opcion 3"]
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (value) {},
            decoration: const InputDecoration(labelText: "Selecciona un Ambiente"),
          ),
        ],
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              //Logic DB
            },
            child: const Text("Agregar"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cerrar"),
          ),
        ],
      );
    }
  }

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
      drawer: NavDraw(
        onPageSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
          _pageController.jumpToPage(index);
        },
      ),
      bottomNavigationBar: NavigationBar(
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
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
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
          ambientesData.isEmpty
              ? const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'No hay datos disponibles.\nEmpiece a crear un Ambiente.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
          )
              : ListView.builder(
            itemCount: ambientesData.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: ListTile(
                  leading: const Icon(Icons.home, color: Colors.blue),
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
                    child: const Text('Hello'),
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
                  child: const Text('Hi!'),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: (currentPageIndex == 0 || currentPageIndex == 1)
          ? FloatingActionButton(
        onPressed: () => _handleFabPress(context),
        child: const Icon(Icons.add),
      )
          : null,
    );
  }
}
