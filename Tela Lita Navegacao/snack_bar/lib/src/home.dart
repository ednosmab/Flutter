import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xff000000), // background
        onPrimary: Colors.blueAccent, // foreground
      ),
      child: Text('Mostrar SnackBar'),
      onPressed: () {
        var snackbar = SnackBar(
          content: Text('Testando 1,2,3...'),
          action: SnackBarAction(
            label: 'Definir Ação',
            onPressed: () {},
          ),
          duration: const Duration(seconds: 5),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      },
    ));
  }
}
