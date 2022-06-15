import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Digite seu nome',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nome inválido';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Digite seu Sobrenome',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Sobrenome inválido';
                }
                return null;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    print('Form Validado');
                    Navigator.pushNamed(context, '/help');
                  }
                },
                child: Text('Enviar'))
          ],
        ));
  }
}
