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
// linkando a função Post com pegarPosts e deve ser assíncrona por causa do delay de resposta da internet
// essa função vai pegar uma lista de posts
Future<List<Post>> pegarPosts() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    return parsePosts(response.body);
  } else {
    throw Exception('Falha na requisição de POST');
  }
}

// essa função vai separar a resposta do json em um json interno e
//separar de forma organizada no formato de lista
List<Post> parsePosts(String responseBody) {
  var parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Post>((json) => Post.fromJson(json)).toList();
}

class PostsList extends StatelessWidget {
  final List<Post> posts;

  PostsList({required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.cake),
            title: Text(posts[index].title),
            subtitle: Text(posts[index].body),
          );
        });
  }
}

class RequisicaoPage extends StatefulWidget {
  @override
  _RequisicaoPage createState() => _RequisicaoPage();
}

class _RequisicaoPage extends State<RequisicaoPage> {
  late Future<List<Post>> postagens;

  // para não ficar executando todas as vezes que a página sofrer alteração, por ser de do tipo Stateful
  // que permite mutação de dados, é necessário criar uma função fora do builder com initState
  @override
  void initState() {
    // necessário para fazer rodar a função
    super.initState();
    postagens = pegarPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Riquisições Get')),
      body: Center(

          // estrutura para exibir as postagens na tela, FutureBuilder fica
          // aguardando que a requisição ocorra para poder exibir as informações do json
          child: FutureBuilder<List<Post>>(
        future: postagens,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PostsList(posts: snapshot.data!);
          }
          return CircularProgressIndicator();
        },
      )),
    );
  }
}
