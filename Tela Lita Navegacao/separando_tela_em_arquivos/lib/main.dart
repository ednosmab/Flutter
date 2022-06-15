import 'package:flutter/material.dart';
import 'src/home.dart';

void main() => runApp(SeparandoTela());

class SeparandoTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Separando Tela em Arquivos'),
            ),
            body: HomePage()));
  }
}
