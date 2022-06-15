import 'package:flutter/material.dart';
import 'botao.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  var textoEstilo = TextStyle(fontSize: 30);
  var texto = 'Olá mundo!';
  var vinte = EdgeInsets.all(20);
  func() {
    print('Clicou no botão');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            // brightness: Brightness.dark
            // brightness: Brightness.light

            appBarTheme: const AppBarTheme(
                titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
                backgroundColor: Colors.red),
            textTheme: const TextTheme(
                bodyText2: TextStyle(
              color: Colors.red,
            ))),
        home: Scaffold(
            appBar: AppBar(title: Text('Iniciando com Temas')),
            body: Column(
              children: [
                Container(
                  color: Theme.of(context).colorScheme.secondary,
                  margin: vinte,
                  child: Text(texto, style: textoEstilo),
                ),
                Container(
                    child: Row(
                  children: [
                    Botao(onPress: func, text: 'Botão 1', cor: Colors.red),
                    Botao(onPress: func, text: 'Botão 2', cor: Colors.blue),
                    Botao(onPress: func, text: 'Botão 3', cor: Colors.green)
                  ],
                ))
              ],
            )));
  }
}
