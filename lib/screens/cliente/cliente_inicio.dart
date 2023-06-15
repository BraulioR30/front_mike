import 'package:flutter/material.dart';
import 'package:prueba2/screens/general/widgets.dart';

class ClienteScreen extends StatelessWidget {
  const ClienteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey, // Color inicial del degradado (gris)
              Colors.black, // Color final del degradado (negro)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundColor: Colors.blueGrey,
                backgroundImage: NetworkImage(
                    'https://www.pngall.com/wp-content/uploads/5/Profile-Male-Transparent.png'),
              ),
              const SizedBox(height: 20),
              Text(
                'Braulio Rangel Terrazas',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 8),
              Text(
                'brauliort1@gmail.com',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 8),
              Text(
                '477 471 8226',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 8),
              Text(
                '20',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 30),
              cardEditarCliente(context, 'Editar Perfil', '/editarCliente'),
              cardListaClientes(context, 'Clientes', '/listaClientes'),
              cardEliminar(context, 'Eliminar', '/route'),
              const SizedBox(height: 30),
              cardCerrarSesion(context),
            ],
          ),
        ),
      ),
    );
  }
}
