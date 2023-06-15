import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:prueba2/screens/cliente/cliente_inicio.dart';
import 'package:prueba2/screens/general/explorar.dart';
import 'package:prueba2/screens/juego/lista_juegos.dart';
import 'package:prueba2/screens/sucursal/mapa_sucursales.dart';

class InicioScreen extends StatefulWidget {
  const InicioScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InicioScreenState createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ListaJuegoScreen(),
    MapaScreen(),
    const ExplorarScreen(),
    const ClienteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: GNav(
          rippleColor: const Color.fromARGB(255, 38, 202, 98),
          hoverColor: const Color.fromARGB(255, 77, 202, 61),
          backgroundColor: Colors.black,
          gap: 8,
          activeColor: const Color.fromARGB(255, 71, 214, 46)!,
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: const Duration(milliseconds: 400),
          tabBackgroundColor: Colors.grey[800]!,
          color: Color.fromARGB(255, 255, 255, 255),
          tabs: const [
            GButton(
              icon: LineIcons.gamepad,
              text: 'Juegos',
            ),
            GButton(
              icon: LineIcons.map,
              text: 'Sucursales',
            ),
            GButton(
              icon: LineIcons.users,
              text: 'Empleados',
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Yo',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
