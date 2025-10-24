import 'package:flutter/material.dart';

class Datos extends StatelessWidget {
  const Datos({super.key});

  @override
  Widget build(BuildContext context) {
    const dark = Color(0xFF303030);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          AppBar(title: const Text('Datos Personales'), backgroundColor: dark),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            SizedBox(height: 20),
            Text('Nombres: Francisco (Pacho)', style: TextStyle(color: dark)),
            Text('Apellidos: Gómez Rivas', style: TextStyle(color: dark)),
            Text('Dirección: Calle 15 #8-24, Santa Marta',
                style: TextStyle(color: dark)),
            Text('Teléfono: 3204561230', style: TextStyle(color: dark)),
            Text('Email: pacho.gomez@example.com',
                style: TextStyle(color: dark)),
          ],
        ),
      ),
    );
  }
}
