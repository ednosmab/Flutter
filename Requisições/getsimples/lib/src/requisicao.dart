import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

// Armazenando resultado da requisição do json
// objeto que estrutura a resposta do json
class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  // transformando a resposta do json em um objeto organizado
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);
  }
}

// Fazendo a requisição
// linkando a função Post com pegarPost e deve ser assíncrona por causa do delay de resposta da internet
Future<Post> pegarPost() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Falha na requisição de POST');
  }
}

class RequisicaoPage extends StatefulWidget {
  @override
  _RequisicaoPage createState() => _RequisicaoPage();
}

class _RequisicaoPage extends State<RequisicaoPage> {
  late Future<Post> postagem;

  // para não ficar executando todas as vezes que a página sofrer alteração, por ser de do tipo Stateful
  // que permite mutação de dados, é necessário criar uma função fora do builder com initState
  @override
  void initState() {
    // necessário para fazer rodar a função
    super.initState();
    postagem = pegarPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Riquisições Get')),
      body: Center(

          // estrutura para exibir a postagem na tela, FutureBuilder fica
          // aguardando que a requisição ocorra para poder exibir as informações do json
          child: FutureBuilder<Post>(
        future: postagem,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Text('ID User: ${snapshot.data!.userId.toString()}'),
                Text('ID Postagem: ${snapshot.data!.id.toString()}'),
                Text('Título: ${snapshot.data!.title}'),
                Text('Postagem: ${snapshot.data!.body}'),
              ],
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          } else {
            // fica executando um looding gráfico na forma de um
            // círculo até que a resposta do json ocorra
            return CircularProgressIndicator();
          }
        },
      )),
    );
  }
}
