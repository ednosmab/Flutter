import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() => runApp(ConsumoMedio());

class ConsumoMedio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/home': (context) => HomePage()},
      initialRoute: '/home',
    );
  }
}
