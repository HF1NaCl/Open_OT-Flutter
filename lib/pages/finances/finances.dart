import 'package:flutter/material.dart';
import '../../widgets/nav_drawer.dart';

class FinancesPage extends StatelessWidget {
  const FinancesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finanzas'),
      ),
      drawer: NavDraw(
        onPageSelected: (int index) {},
      ),
    );
  }
}