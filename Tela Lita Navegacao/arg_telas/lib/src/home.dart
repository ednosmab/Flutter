import 'package:flutter/material.dart';
import './help.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
          child: Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton(
                        child: Text('Ir para Perfil Page'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/perfil');
                        }),
                  ),
                  Container(
                      margin: EdgeInsets.all(20),
                      child: ElevatedButton(
                          child: Text('Ir para Help Page'),
                          onPressed: () {
                            Navigator.pushNamed(context, '/help',
                                arguments:
                                    ScreenArguments('Título', 'Mensagem'));
                          }))
                ],
              ))),
    );
  }
}
