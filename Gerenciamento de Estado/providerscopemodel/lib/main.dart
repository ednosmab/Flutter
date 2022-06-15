import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/models/contador.dart';
import 'src/home.dart';
import 'src/help.dart';
import 'src/perfil.dart';

void main() => runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => Contador())],
    child: ProviderScopeModel()));

class ProviderScopeModel extends StatelessWidget {
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
