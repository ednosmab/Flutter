import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil')),
      body: Center(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text(
              'Tela de Perfil',
              style: TextStyle(fontSize: 50),
            ),
          )
        ]),
      ),
    );
  }
}
