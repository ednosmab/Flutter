import 'package:flutter/material.dart';

void main() => runApp(DrawerApp());

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Iniciando Drawer',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Iniciando Drawer'),
          ),
          body: Center(
            child: Text('Olá Drawer'),
          ),

          //usado como um menu lateral
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  child: Text(
                    'Cabeçalho',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(color: Color(0xff00BFFF)),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle_outlined),
                  title: Text('Item 1'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.downhill_skiing_sharp),
                  title: Text('Item 2'),
                  onTap: () {},
                )
              ],
            ),
          ),
        ));
  }
}
