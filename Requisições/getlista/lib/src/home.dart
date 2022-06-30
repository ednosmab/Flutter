import 'package:flutter/material.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body: Center(
            child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text('Bem Vindo', style: TextStyle(fontSize: 40)),
          ),
          Container(
              margin: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('Login'))),
          Container(
              margin: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/requisicao');
                  },
                  child: Text('Requisições'))),
        ])));
  }
}
