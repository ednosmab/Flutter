import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  var estiloBotao = TextStyle(color: Colors.black);

  Botao({required this.onPress, required this.icon, @required this.text});

  VoidCallback onPress;
  IconData icon;
  var text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
            onPressed: onPress,
            child: Column(
              children: [Icon(icon), Text(text, style: estiloBotao)],
            )));
  }
}
