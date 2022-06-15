import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/contador.dart';
import './models/campotexto.dart';
import 'formulario.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
          child: Column(
        children: [
          Formulario(),
          Container(
            height: 100,
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Digite o seu nome',
              ),
              onChanged: (text) {
                print('Meu nome é: $text');
                Provider.of<AreaTexto>(context, listen: false).campo(text);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text('Contatem'),
          ),
          //Exibindo o valor do contador
          Consumer<AreaTexto>(
              builder: (context, text, child) =>
                  Text('Meu nome é: ${text.nome}')),
          Consumer<Contador>(
              builder: (context, contador, child) =>
                  Text(contador.count.toString())),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
                onPressed: () {
                  Provider.of<Contador>(context, listen: false).aumentar();
                },
                child: Text('Aumentar')),
          ),
          //Aumentando o valor da contagem
          // Container(width: 100, height: 100, color: fundo),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/help');
              },
              child: Text('Ir para Help Page'))
        ],
      )),
    );
  }
}
