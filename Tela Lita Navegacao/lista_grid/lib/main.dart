import 'package:flutter/material.dart';
import 'imagem.dart';

void main() => runApp(GridApp());

class GridApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Grid',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
          appBar: AppBar(
              title: Text(
            'Lista Grid',
            style: TextStyle(color: Color(0xffffffbb)),
          )),
          body: GridView.count(
            crossAxisCount: 2,
            children: [
              Imagem(
                imagem: 'goku.jpg',
              ),
              Imagem(
                imagem: 'vegeta.jpg',
              ),
              Imagem(
                imagem: 'gohan.jpg',
              ),
              Imagem(
                imagem: 'trunks.jpg',
              ),
              Imagem(
                imagem: 'piccolo.jpg',
              ),
              Imagem(
                imagem: 'kuririn.jpg',
              ),
              Imagem(
                imagem: 'yamcha.jpg',
              ),
              Imagem(
                imagem: 'tenshinhan.jpg',
              ),
              Imagem(
                imagem: 'goten.jpg',
              ),
              Imagem(
                imagem: 'trunks_min.png',
              ),
            ],
          )),
    );
  }
}
