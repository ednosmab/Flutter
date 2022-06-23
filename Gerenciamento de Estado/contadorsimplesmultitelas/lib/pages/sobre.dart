part of '../main.dart';

// na classe Sobre não terá o botão de incremento apenas a visualização da contagem
class SobrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contador Multi Telas - Sobre')),
      body: Observer(
          builder: (_) => Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Contagem: ${contador.valor}'),
                ],
              ))),
    );
  }
}
