import 'package:flutter/material.dart';
import 'src/home.dart';
import 'src/help.dart';
import 'src/perfil.dart';

void main() => runApp(NavegacaoRotas());

class NavegacaoRotas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
        '/help': (context) => HelpPage(),
        '/perfil': (context) => PerfilPage()
      },
      initialRoute: '/home',
    );
  }
}
