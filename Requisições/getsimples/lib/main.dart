import 'package:flutter/material.dart';
import 'src/home.dart';
import 'src/login.dart';
import 'src/perfil.dart';
import 'src/requisicao.dart';

void main() => runApp(Requisicao());

class Requisicao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/perfil': (context) => PerfilPage(),
        '/requisicao': (context) => RequisicaoPage(),
      },
      initialRoute: '/home',
    );
  }
}
