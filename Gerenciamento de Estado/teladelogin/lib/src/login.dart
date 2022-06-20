import 'package:flutter/material.dart';
import 'loginform.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela de Login')),
      body: Center(child: Container(child: LoginForm())),
    );
  }
}
