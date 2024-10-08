import 'package:flutter/material.dart';
import 'Screens/MenuLateral.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ejemplo de drawer',
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Primera Página"),
          ),
          drawer: const menulateral(),
          body:  Center(
            child: Text("Aarón Ortiz Sánchez",style: GoogleFonts.zillaSlab(fontSize: 32)),
            
          ),
        ));
  }
}
