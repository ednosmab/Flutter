import 'package:flutter/material.dart';

class AreaTexto with ChangeNotifier {
  String nome = '';
  void campo(novoNome) {
    nome = novoNome;
    notifyListeners();
  }
}
