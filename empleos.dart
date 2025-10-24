import 'package:flutter/material.dart';

class Empleos extends StatelessWidget {
  const Empleos({super.key});

  @override
  Widget build(BuildContext context) {
    const dark = Color(0xFF303030);

    final emp = [
      {'cargo': 'Vendedor', 'empresa': 'Comercial del Caribe Ltda'},
      {'cargo': 'Mensajero', 'empresa': 'Express Santa Marta'},
      {'cargo': 'Auxiliar de Bodega', 'empresa': 'Distribuciones del Norte'},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Empleos'),
        backgroundColor: dark,
      ),
      body: ListView.builder(
        itemCount: emp.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(
              emp[i]['cargo'] as String,
              style: const TextStyle(color: dark),
            ),
            subtitle: Text(
              emp[i]['empresa'] as String,
              style: const TextStyle(color: Colors.black54),
            ),
          );
        },
      ),
    );
  }
}
