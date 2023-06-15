import 'package:flutter/material.dart';

class MapaScreen extends StatelessWidget {
  MapaScreen({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildImageCard('assets/images/Alt.jpeg',
                  'Sucursal Plaza Altacia                                           Blvd. Aeropuerto No. 104, Cerrito de Jerez, 37530 León, Gto.  '),
              SizedBox(height: 16.0),
              _buildImageCard('assets/images/Pas.jpg',
                  'Sucursal Plaza Paseo Morelos                                           Blvrd Jose María Morelos 807, Los Murales, 37219 León, Gto.'),
              SizedBox(height: 16.0),
              _buildImageCard('assets/images/Gal.jpg',
                  'Sucursal Plaza Mayor                                           Blvd. Juan Alonso de Torres Pte. 2002, Valle del Campestre, 37150 León, Gto.'),
              SizedBox(height: 16.0),
              _buildImageCard('assets/images/Gra.jpg',
                  'Sucursal La Gran Plaza                                           Blvd. Adolfo López Mateos 1902, Villa de las Torres, 37180 León, Gto.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageCard(String imagePath, String description) {
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[400],
      ),
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
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapaScreen(),
    );
  }
}
