import 'package:flutter/material.dart';
import 'package:requisicaopost/pages/sucesso.dart';
import 'pages/home.dart';
import 'pages/requisicaopost.dart';

void main() => runApp(Post());

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
        '/post': (context) => RequisicaoPage(),
        '/sucesso': (context) => SucessoPage()
      },
      initialRoute: '/home',
    );
  }
}
