import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'stores/contador.dart';

// Para essa aplicação o home deve fazer parte de main
//então não deve ser mais importada de forma convencional
// import 'pages/home.dart';

// o comando Part faz uma cópia de home e deixa disponível para ser acessada
// sempre que necessário, meio que particiona a estrutura
part 'pages/home.dart';
part 'pages/sobre.dart';

final contador = Contador();

void main() => runApp(ContadorMobx());

class ContadorMobx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
        '/sobre': (context) => SobrePage(),
      },
      initialRoute: '/home',
    );
  }
}
