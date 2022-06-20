import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginForm createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
              decoration: InputDecoration(
                hintText: 'Usuário',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Usuário inválido';
                }
                return null;
              }),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Senha',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Senha inválida';
              }
              if (value.length < 4) {
                return 'Senha curta';
              }
              return null;
            },
          ),
          ElevatedButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  Navigator.pushNamed(context, '/perfil');
                }
              },
              child: Text('Entrar'))
        ],
      ),
    );
  }
}
