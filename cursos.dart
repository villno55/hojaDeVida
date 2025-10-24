import 'package:flutter/material.dart';

class Cursos extends StatelessWidget {
  const Cursos({super.key});

  @override
  Widget build(BuildContext context) {
    const dark = Color(0xFF303030);
    final cur = [
      {
        'id': 1,
        'nom': 'Excel Básico',
        'ent': 'Academia Digital Caribe',
        'fec': '2024-05-10'
      },
      {
        'id': 2,
        'nom': 'Manejo de Redes Sociales',
        'ent': 'Centro Educativo del Magdalena',
        'fec': '2023-11-18'
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Cursos'), backgroundColor: dark),
      body: ListView.builder(
        itemCount: cur.length,
        itemBuilder: (context, i) {
          final d = cur[i];
          return ListTile(
            title: Text(d['nom'] as String,
                style: const TextStyle(color: dark)),
            subtitle: Text('${d['ent']} - ${d['fec']}',
                style: const TextStyle(color: Colors.black54)),
          );
        },
      ),
    );
  }
}



