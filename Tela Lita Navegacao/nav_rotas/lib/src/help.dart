import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Help Page')),
      body: Center(
          child: ElevatedButton(
        child: Text('Voltar'),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
