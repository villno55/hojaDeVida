import 'package:flutter/material.dart';

class Estudios extends StatelessWidget {
  const Estudios({super.key});

  @override
  Widget build(BuildContext context) {
    const dark = Color(0xFF303030);

    final est = [
      {'nivel': 'Bachiller', 'inst': 'Instituto Santa Marta'},
      {'nivel': 'Técnico en Sistemas', 'inst': 'Corporación Educativa del Caribe'},
      {'nivel': 'Curso', 'inst': 'Plataformas Digitales del Magdalena'},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Estudios'),
        backgroundColor: dark,
      ),
      body: ListView.builder(
        itemCount: est.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(
              est[i]['nivel'] as String,
              style: const TextStyle(color: dark),
            ),
            subtitle: Text(
              est[i]['inst'] as String,
              style: const TextStyle(color: Colors.black54),
            ),
          );
        },
      ),
    );
  }
}
