import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../stores/contador.dart';

final contador = Contador();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello Mobx')),
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
                  )
                ],
              ))),
    );
  }
}
