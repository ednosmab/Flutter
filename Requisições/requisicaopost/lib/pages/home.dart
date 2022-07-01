import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100, bottom: 100),
            child: Text('Página para Requisição'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/post');
              },
              child: Text('Entrar'))
        ],
      )),
    );
  }
}
