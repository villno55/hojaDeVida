import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Menu(),
    );
  }
}

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
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text('Inicio', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person, color: Colors.white),
                title:
                    const Text('Panel de Usuario', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app, color: Colors.white),
                title: const Text('Salir', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
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

class Datos extends StatelessWidget {
  const Datos({super.key});

  @override
  Widget build(BuildContext context) {
    const dark = Color(0xFF303030);
    // Aquí puedes poner la lista de datos personales, por ejemplo
    final datosPersonales = {
      'Nombre': 'Tu Nombre',
      'Correo': 'tu.email@example.com',
      'Teléfono': '+57 300 0000000',
    };

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Datos Personales'),
        backgroundColor: dark,
      ),
      body: ListView(
        children: datosPersonales.entries.map((entry) {
          return ListTile(
            title: Text(
              entry.key,
              style: const TextStyle(color: dark),
            ),
            subtitle: Text(
              entry.value,
              style: const TextStyle(color: Colors.black54),
            ),
          );
        }).toList(),
      ),
    );
  }
}

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

class Cursos extends StatelessWidget {
  const Cursos({super.key});

  @override
  Widget build(BuildContext context) {
    const dark = Color(0xFF303030);
    final cursos = [
      {'curso': 'Flutter Básico', 'plataforma': 'Udemy'},
      {'curso': 'Dart Avanzado', 'plataforma': 'Coursera'},
      {'curso': 'React Native Intro', 'plataforma': 'Plataformas Digitales del Caribe'},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Cursos'),
        backgroundColor: dark,
      ),
      body: ListView.builder(
        itemCount: cursos.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(
              cursos[i]['curso'] as String,
              style: const TextStyle(color: dark),
            ),
            subtitle: Text(
              cursos[i]['plataforma'] as String,
              style: const TextStyle(color: Colors.black54),
            ),
          );
        },
      ),
    );
  }
}
