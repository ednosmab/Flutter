import 'package:flutter/material.dart';

void main() {
  runApp(const ListaHorizontal());
}

class ListaHorizontal extends StatelessWidget {
  const ListaHorizontal({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Lista na Horizontal')),
        body: ListView(scrollDirection: Axis.horizontal, children: [
          Box(
            cor: 0xffA020F0,
          ),
          Box(
            cor: 0XFF00BFFF,
          ),
          Box(cor: 0XFF00FF00),
          Box(cor: 0XFFDA70D6),
        ]),
      ),
    );
  }
}

class Box extends StatelessWidget {
  Box({this.cor});

  var cor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      color: Color(cor),
    );
  }
}
