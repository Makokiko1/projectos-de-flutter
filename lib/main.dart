import 'package:flutter/material.dart';
import 'Screens/MenuLateral.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'robert96',
            style: TextStyle(fontSize: 30),
          ),
        ),
        drawer: const menulateral(),
        body: const ProfileScreen(),
      ),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0; // 0 = Grid Icon, 1 = Mention Icon
  bool _showPosts = true; // Controla la visibilidad de las publicaciones

  // Lista de imágenes que se mostrarán en la cuadrícula
  final List<String> images = [
    'assets/images/deporte.jpg',
    'assets/images/Colegas.jpg',
    'assets/images/Vecinos.jpg',
    'assets/images/yo.jpg',
    'assets/images/descarga.jpg',
    'assets/images/deporte.jpg',
    'assets/images/Colegas.jpg',
    'assets/images/Vecinos.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Parte superior con la imagen de perfil y la información del usuario
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Imagen de perfil circular
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      'assets/images/descarga.jpg',
                    ),
                  ),
                  // Información del usuario en una sola línea
                  Row(
                    children: [
                      // Publicaciones
                      Column(
                        children: [
                          Text(
                            '8',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 4), // Espacio entre el número y la etiqueta
                          Text(
                            'Posts',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(width: 20), // Espacio entre los elementos
                      // Seguidores
                      Column(
                        children: [
                          Text(
                            '517',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 4), // Espacio entre el número y la etiqueta
                          Text(
                            'Followers',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(width: 20), // Espacio entre los elementos
                      // Seguidos
                      Column(
                        children: [
                          Text(
                            '1502',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 4), // Espacio entre el número y la etiqueta
                          Text(
                            'Following',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 2), // Espacio vertical entre los nombres
              const Row(
                children: [
                  Text('Roberto Alonso'),
                ],
              ),
              const SizedBox(height: 4), // Espacio entre el nombre y la descripción
              const Row(
                children: [
                  Text('Vamos no me jodas'),
                ],
              ),
              const SizedBox(height: 20), // Espacio entre la descripción y el botón
              // Botón "Editar perfil"
              TextButton(
                onPressed: () {
                  // Acción del botón (vacío por ahora)
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(77, 81, 81, 81), // Fondo del botón
                  foregroundColor: Colors.black, // Color del texto (negro)
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                ),
                child: const Text(
                  'Editar perfil',
                  style: TextStyle(fontSize: 18), // Estilo del texto
                ),
              ),
              const SizedBox(height: 20), // Espacio entre el botón y las imágenes
              // Fila de imágenes circulares (Historias)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                      ),
                      SizedBox(height: 8), // Espacio entre la imagen y el texto
                      Text('Nueva'), // Texto debajo de la imagen
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/deporte.jpg'),
                      ),
                      SizedBox(height: 8), // Espacio entre la imagen y el texto
                      Text('Deporte'), // Texto debajo de la imagen
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/Colegas.jpg'),
                      ),
                      SizedBox(height: 8), // Espacio entre la imagen y el texto
                      Text('Sabios'), // Texto debajo de la imagen
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/Vecinos.jpg'),
                      ),
                      SizedBox(height: 8), // Espacio entre la imagen y el texto
                      Text('Vecinos'), // Texto debajo de la imagen
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/yo.jpg'),
                      ),
                      SizedBox(height: 8), // Espacio entre la imagen y el texto
                      Text('Yo'), // Texto debajo de la imagen
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20), // Espacio entre las historias y la línea gris
              // Línea gris debajo de las historias
              const Divider(
                color: Colors.grey, // Color de la línea gris
                thickness: 1.0, // Grosor de la línea
              ),
            ],
          ),
        ),
        // Fila con los iconos de cuadrícula y mención
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.grid_on,
                      size: 30,
                      color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0; // Marcar cuadrícula como seleccionada
                        _showPosts = true; // Mostrar publicaciones
                      });
                    },
                  ),
                  // Barra negra debajo del icono seleccionado
                  if (_selectedIndex == 0)
                    Container(
                      height: 2,
                      color: Colors.black,
                    ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.alternate_email,
                      size: 30,
                      color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1; // Marcar mención como seleccionada
                        _showPosts = false; // Ocultar publicaciones
                      });
                    },
                  ),
                  // Barra negra debajo del icono seleccionado
                  if (_selectedIndex == 1)
                    Container(
                      height: 2,
                      color: Colors.black,
                    ),
                ],
              ),
            ),
          ],
        ),
        // Cuadrícula de imágenes (controlando la visibilidad)
        Expanded(
          child: _showPosts // Condicional para mostrar u ocultar
              ? GridView.builder(
                  padding: EdgeInsets.zero, // Eliminar cualquier padding
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // 3 imágenes por fila
                    crossAxisSpacing: 0, // Eliminar espacio entre las imágenes horizontalmente
                    mainAxisSpacing: 0, // Eliminar espacio entre las imágenes verticalmente
                    childAspectRatio: 1, // Relación de aspecto 1:1 para cuadrado
                  ),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    );
                  },
                )
              : Container(), // Contenedor vacío cuando _showPosts es false
        ),
      ],
    );
  }
}
