import 'package:flutter/material.dart';
import './home.dart';
import './help.dart';

class HomeTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                title: Text('Flutter SnackBar'),
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'Home', icon: Icon(Icons.home)),
                    Tab(text: 'Ajuda', icon: Icon(Icons.help))
                  ],
                )),
            body: TabBarView(
              children: [
                HomePage(),
                HelpPage(),
              ],
            )));
  }
}
