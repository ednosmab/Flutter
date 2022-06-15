import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  Botao({required this.onPress, @required this.text, required this.cor});

  VoidCallback onPress;
  var text;
  var cor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
            style: TextButton.styleFrom(
              primary: cor,
            ),
            onPressed: onPress,
            child: Column(
              children: [Text(text, style: TextStyle(fontSize: 25))],
            )));
  }
}
