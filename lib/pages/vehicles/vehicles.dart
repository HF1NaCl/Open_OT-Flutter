import 'package:flutter/material.dart';
import '../../widgets/nav_drawer.dart';

class VehiclesPage extends StatelessWidget {
  const VehiclesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehiculos'),
      ),
      drawer: NavDraw(
        onPageSelected: (int index) {},
      ),
    );
  }
}