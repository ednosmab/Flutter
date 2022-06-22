import 'package:flutter/material.dart';
import 'src/home.dart';
import 'src/login.dart';
import 'src/perfil.dart';

void main() => runApp(TeladeLogin());

class TeladeLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/perfil': (context) => PerfilPage(),
      },
      initialRoute: '/home',
    );
  }
}
