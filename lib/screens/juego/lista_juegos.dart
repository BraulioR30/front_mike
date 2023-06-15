import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Resizable App'),
        ),
        body: Container(
          constraints: BoxConstraints(
            maxWidth: 500,
            maxHeight: 800,
          ),
          child: ListaJuegoScreen(),
        ),
      ),
    );
  }
}

class ListaJuegoScreen extends StatelessWidget {
  const ListaJuegoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey[300]!,
              Colors.black,
            ],
          ),
        ),
        child: GridView.count(
          padding: EdgeInsets.all(16.0),
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          children: [
            _buildGameCard('Alan Wake', 'assets/images/AW.jpg'),
            _buildGameCard('Infinite Warfare', 'assets/images/cod.jpg'),
            _buildGameCard('Black Ops 4', 'assets/images/Cod4.jpg'),
            _buildGameCard('Super Mario Bros', 'assets/images/mario.jpg'),
            _buildGameCard('Minecraft', 'assets/images/minecraft.jpg'),
            _buildGameCard('Miles Morales', 'assets/images/MM.jpg'),
            _buildGameCard('Pokemon', 'assets/images/pokemon.jpg'),
            _buildGameCard('Spider-Man', 'assets/images/SM.jpg'),
            _buildGameCard('The Last of Us', 'assets/images/TLoU.jpg'),
            _buildGameCard('Zelda', 'assets/images/zelda.jpg'),
          ],
        ),
      ),
    );
  }

  Widget _buildGameCard(String title, String imagePath) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10.0), // Separación entre imagen y título
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: 10.0), // Padding al título
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey), // Borde al contenedor
        borderRadius: BorderRadius.circular(0),
      ),
      alignment: Alignment.center,
    );
  }
}
