import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'sucesso.dart';

enviaPost(String titulo, String corpo) async {
  final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      body: {'title': titulo, 'body': corpo, 'userId': '999'});
  if (response.statusCode == 201) {
    print(response.body);
  } else {
    throw Exception('Falha no envio do post');
  }
}

class RequisicaoPage extends StatefulWidget {
  @override
  _RequisicaoPage createState() => _RequisicaoPage();
}

class _RequisicaoPage extends State<RequisicaoPage> {
  String titulo = '';
  String corpo = '';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Requisicao Post')),
      body: Center(
          child: Form(
        key: _formKey,
        child: Column(children: [
          TextFormField(
            autofocus: true,
            decoration: InputDecoration(hintText: 'Título da Postagem'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Título inválido';
              } else {
                return null;
              }
            },
          ),
          TextFormField(
            autofocus: true,
            decoration: InputDecoration(hintText: 'Digite o seu texto'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Texto inválido';
              } else {
                return null;
              }
            },
          ),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  enviaPost(titulo, corpo);
                  Navigator.pushNamed(context, '/sucesso');
                }
              },
              child: Text('Enviar'))
        ]),
      )),
    );
  }
}
