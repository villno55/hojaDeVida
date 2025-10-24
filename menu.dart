import 'package:flutter/material.dart';
import 'datos.dart';
import 'empleos.dart';
import 'estudios.dart';
import 'cursos.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    const dark = Color(0xFF303030);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Menú Principal'),
        backgroundColor: dark,
      ),
      drawer: Drawer(
        child: Container(
          color: dark,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: Text(
                  'Opciones',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text('Inicio', style: TextStyle(color: Colors.white)),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(Icons.person, color: Colors.white),
                title: const Text('Panel de Usuario', style: TextStyle(color: Colors.white)),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app, color: Colors.white),
                title: const Text('Salir', style: TextStyle(color: Colors.white)),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.person, color: dark),
            title: const Text('Datos Personales', style: TextStyle(color: dark)),
            subtitle: const Text('Ver información', style: TextStyle(color: Colors.black54)),
            trailing: const Icon(Icons.arrow_forward_ios, color: dark),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => const Datos()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.work, color: dark),
            title: const Text('Empleos', style: TextStyle(color: dark)),
            subtitle: const Text('Historial laboral', style: TextStyle(color: Colors.black54)),
            trailing: const Icon(Icons.arrow_forward_ios, color: dark),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => const Empleos()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.school, color: dark),
            title: const Text('Estudios', style: TextStyle(color: dark)),
            subtitle: const Text('Ver formación', style: TextStyle(color: Colors.black54)),
            trailing: const Icon(Icons.arrow_forward_ios, color: dark),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => const Estudios()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.book, color: dark),
            title: const Text('Cursos', style: TextStyle(color: dark)),
            subtitle: const Text('Ver cursos', style: TextStyle(color: Colors.black54)),
            trailing: const Icon(Icons.arrow_forward_ios, color: dark),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => const Cursos()),
              );
            },
          ),
        ],
      ),
    );
  }
}
