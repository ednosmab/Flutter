import 'package:flutter/material.dart';
import 'src/homeTabBar.dart';

void main() => runApp(TabBar());

class TabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeTabBar(),
    );
  }
}
