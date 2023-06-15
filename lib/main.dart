import 'package:flutter/material.dart';
import 'package:prueba2/screens/general/inicio.dart';
import 'package:prueba2/screens/general/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/inicioScreen': (context) => const InicioScreen(),
      },
    );
  }
}
