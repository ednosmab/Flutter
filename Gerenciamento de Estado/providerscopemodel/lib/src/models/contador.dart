import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class Contador with ChangeNotifier {
  int count = 0;
  void aumentar() {
    count++;
    notifyListeners();
  }
}
