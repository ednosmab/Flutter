import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  String email = '';
  String senha = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela de Login')),
      body: Container(
        child: Form(
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
                },
                onSaved: (txt) {
                  setState(() {
                    email = txt.toString();
                  });
                },
              ),
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
                    return 'Senha curta (Deve ser maior que 3 caracteres)';
                  }
                  return null;
                },
                onSaved: (txt) {
                  setState(() {
                    senha = txt.toString();
                  });
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState!.save();
                      // Navigator.pushNamed(context, '/perfil');
                    }
                  },
                  child: Text('Entrar')),
              Text('Usuário: $email'),
              Text('Senha: $senha')
            ],
          ),
        ),
      ),
    );
  }
}
