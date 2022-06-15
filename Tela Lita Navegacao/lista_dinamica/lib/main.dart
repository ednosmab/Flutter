import 'package:flutter/material.dart';

void main() => runApp(ListaDinamica());

class ListaDinamica extends StatelessWidget {
  var contatos = [
    'Ana',
    'Pedro',
    'Paulo',
    'Mariana',
    'João',
    'Carlos',
    'Antonio',
    'Rita',
    'Gertrudia',
    'Vanescleia',
    'Cleiton',
    'Lucia',
    'Geraldo',
    'Paula'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lista Dinamica',
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: Scaffold(
          appBar: AppBar(
              title: Text(
            'Lista Dinâmica',
            style: TextStyle(color: Color(0xffffffbb)),
          )),
          body: ListView.builder(
            itemCount: contatos.length,
            itemBuilder: (contexto, index) {
              return ListTile(
                leading: Icon(Icons.person),
                title: Text('Olá, ${contatos[index]}. Tudo bem?'),
                trailing: TextButton(
                  onPressed: null,
                  child: Text('Ligar'),
                ),
              );
            },
          ),
        ));
  }
}
