//aqui em home não deve ser importado mais tanto o material quanto
// flutter_mobx e contador, assim como, não deve ser atribuido a classe Contador
// na variável contatador, tudo será atribuído na raiz da aplicação
// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import '../stores/contador.dart';

// como os imports estão na raiz, agora deve ser informado que eles serão
// redirecionados para a raiz

// informa que esse código é parte da raiz
part of '../main.dart';

// agora não há importação e nem instaciamento da classe Contador e sim
// apenas a sua utilização
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contador Multi Telas - Home')),
      body: Observer(
          builder: (_) => Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Contagem'),
                  Text('${contador.valor}'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.all(20),
                          child: ElevatedButton(
                              onPressed: contador.aumentar,
                              child: Text('Aumentar Contagem'))),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: ElevatedButton(
                            onPressed: contador.zerarContagem,
                            child: Text('Dimnuir')),
                      )
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/sobre');
                      },
                      child: Text('Ir para Sobre'))
                ],
              ))),
    );
  }
}
