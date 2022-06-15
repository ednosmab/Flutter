import 'package:campodetexto/src/models/campotexto.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/contador.dart';
import './models/campotexto.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Help Page')),
      body: Center(
          child: Consumer<AreaTexto>(
        builder: (context, texto, child) => Text('Nome: ${texto.nome}'),
      )),
    );
  }
}
