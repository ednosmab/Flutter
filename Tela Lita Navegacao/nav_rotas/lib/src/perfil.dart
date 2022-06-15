import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil Page')),
      body: Center(
          child: ElevatedButton(
        child: Text('Ir para Help Page'),
        onPressed: () {
          Navigator.pushNamed(context, '/help');
        },
      )),
    );
  }
}
