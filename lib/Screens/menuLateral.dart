import 'package:flutter/material.dart';
import 'enlace1.dart';
import 'enlace2.dart';
import 'enlace3.dart';
import 'package:actividad1/main.dart';

class menulateral extends StatelessWidget {
  const menulateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Empresa"),
            accountEmail: Text("micorreo@gmail.com"),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://cosmere.es/wp-content/uploads/2024/09/El-Archivo-de-las-Tormentas-Viento-y-Verdad-ilustracion-para-la-portada-USA-arte-de-Michael-Whelan.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Ink(
            color: Color.fromARGB(255, 234, 128, 22),
            child: ListTile(
              title: const Text(
                "Enlace 1",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const enlace1(),
                  ),
                );
              },
            ),
          ),
          ListTile(
            title: const Text("Enlace 2"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const enlace2(),
                ),
              );
            },
          ), ListTile(
            title: const Text("Enlace 3"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const enlace3(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text("Volver al Inicio"),
            onTap: () {
              // Cierra el drawer y vuelve al inicio
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) => const MyApp(), // Navega al widget principal MyApp
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
