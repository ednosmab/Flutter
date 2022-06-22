import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() => runApp(ContadorMobx());

class ContadorMobx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/home': (context) => HomePage()},
      initialRoute: '/home',
    );
  }
}
