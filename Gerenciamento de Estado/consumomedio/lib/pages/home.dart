import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../stores/consumo_list.dart';

final consumos = ConsumoList();

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

// a classe do tipo State é utilizada para quando é necessário mudar o valor de variáveis
// como essa aplicação é destinada para criação de uma média de consumo por viagens de carro
// tão logo é necessário armazenar esses valores de consumos e para isso a pasta stores é necessária
// os consumos serão armazenados dentro de stores\consumo_list.dart
class _HomePage extends State<HomePage> {
  double consumo = 0;

  // Adicionando consumo
  // transformando valor string em number double
  void _handleConsumoField(String text) {
    setState(() {
      if (text != '') {
        consumo = double.parse(text);
      } else {
        consumo = 0;
      }
    });
  }

  // adcionando de fato o consumo
  void _handleRegistrarButton() {
    if (consumo > 0) {
      consumos.addConsumo(consumo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Consumo Médio')),
      body: Observer(
          builder: (_) => Column(children: [
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                      hintText: 'Qual foi o consumo da viagem?'),
                  keyboardType: TextInputType.number,
                  onChanged: _handleConsumoField,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      onPressed: _handleRegistrarButton,
                      child: Text('Registrar $consumo')),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Text('Consumos Resgistrados'),
                        Text('${consumos.list.length}')
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Text('Consumo Médio'),
                        Text(consumos.mediaGeral)
                      ],
                    )),
                  ],
                ),
                Text('Registros:'),
                Container(
                  height: 200,

                  // trabalhando com largura de tamanho relativo para mobile
                  width: MediaQuery.of(context).size.width * 0.6,

                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(20),
                  color: Colors.cyan,
                  child: ListView.builder(
                    itemCount: consumos.list.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return Text(
                        '-${consumos.list[index]}',
                        style: TextStyle(color: Colors.white),
                      );
                    },
                  ),
                )
              ])),
    );
  }
}
