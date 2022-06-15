import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int contagem = 0;
  var fundo = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
          child: Column(
        children: [
          Text('Contatem'),
          Text(contagem.toString()),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  contagem++;
                });
              },
              child: Text('Aumentar')),
          Container(width: 100, height: 100, color: fundo),
          ElevatedButton(
              onPressed: () {
                if (fundo == Colors.red) {
                  setState(() {
                    fundo = Colors.blue;
                  });
                } else {
                  setState(() {
                    fundo = Colors.red;
                  });
                }
              },
              child: Text('Muda Cor de Fundo'))
        ],
      )),
    );
  }
}
