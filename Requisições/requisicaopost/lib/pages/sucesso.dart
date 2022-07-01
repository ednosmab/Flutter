import 'package:flutter/material.dart';

class SucessoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Página de Sucesso')),
        body: Center(
          child: Text('Dados enviados com sucesso!'),
        ));
  }
}
