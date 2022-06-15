import 'package:flutter/material.dart';
import 'botao.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  var titulo =
      TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);

  var subTitulo = TextStyle(fontSize: 16, color: Colors.grey);

  callAction() {
    print('Clicou em Ligar');
  }

  localAction() {
    print('Clicou em Endereço');
  }

  shareAction() {
    print('Clicou em Compartilhar');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Meu Primeiro App')),
            body: Column(
              children: [
                Image(image: AssetImage('assets/muro.jpg')),
                Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Muro das lamentações',
                              style: titulo,
                            ),
                            Text('Jerusalem, Israel')
                          ],
                        )),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.blue),
                            Text('4.562')
                          ],
                        )
                      ],
                    )),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(children: [
                    Botao(
                      icon: Icons.call,
                      text: 'Ligar',
                      onPress: callAction,
                    ),
                    Botao(
                      icon: Icons.location_on,
                      text: 'Endereço',
                      onPress: localAction,
                    ),
                    Botao(
                      icon: Icons.share,
                      text: 'Compartilhar',
                      onPress: shareAction,
                    )
                  ]),
                ),
                Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                        'O Muro das Lamentações ou Muro Ocidental é o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do antigo Templo de Herodes, erguido por Herodes, o Grande no lugar do Templo de Jerusalém inicial.'))
              ],
            )));
  }
}
