import 'package:flutter/material.dart';
import 'src/home.dart';

void main() => runApp(SnakBar());

class SnakBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Conhecendo SnackBar'),
        ),
        body: HomePage(),
      ),
    );
  }
}
