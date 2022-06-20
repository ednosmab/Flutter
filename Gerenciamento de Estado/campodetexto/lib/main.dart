import 'package:campodetexto/src/models/campotexto.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/models/contador.dart';
import 'src/home.dart';
import 'src/help.dart';
import 'src/perfil.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => Contador()),
      ChangeNotifierProvider(create: (context) => AreaTexto()),
    ], child: CampoTexto()));

class CampoTexto extends StatelessWidget {
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
