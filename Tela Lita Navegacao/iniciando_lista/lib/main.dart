import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  // This widget is the root of your application.
  var estiloTitulo = TextStyle(fontSize: 25, color: Colors.lightBlueAccent);
  var estiloTexto = TextStyle(fontSize: 20, color: Colors.blueAccent);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold))),
      home: Scaffold(
          appBar: AppBar(title: Text('Iniciando com Lista')),
          body: ListView(children: [
            Container(
              margin: EdgeInsets.all(15),
              child: ListTile(
                  title: Text(
                'Conhecendo as 7 Maravilhas do Mundo',
                style: estiloTitulo,
              )),
            ),
            Image(
              image: AssetImage('assets/cristoRedentor.jpg'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'Cristo Redentor é uma estátua art déco que retrata Jesus Cristo, localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, com vista para parte considerável da cidade brasileira do Rio de Janeiro',
                style: estiloTexto,
              ),
            ),
            Image(
              image: AssetImage('assets/machuPicchu.jpg'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'Machu Picchu (em quíchua Machu Picchu, "velha montanha"), também chamada "cidade perdida dos Incas", é uma cidade pré-colombiana bem conservada, localizada no topo de uma montanha, a 2 400 metros de altitude, no vale do rio Urubamba, atual Peru.',
                style: estiloTexto,
              ),
            ),
            Image(
              image: AssetImage('assets/chichenItza.jpg'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'Chichén Itzá é um complexo mundialmente conhecido de ruínas maias na Península de Iucatão, no México. A enorme pirâmide com degraus é conhecida como El Castillo e domina a cidade antiga de 6,5 quilómetros quadrados, que prosperou de 600 d.C. até ao século XIII',
                style: estiloTexto,
              ),
            ),
            Image(
              image: AssetImage('assets/coliseu.jpg'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'Símbolo do Império Romano, o Coliseu é o mais famoso anfiteatro do mundo e uma das obras arquitetônicas mais importantes da história da humanidade. Com cerca de 2 mil anos de história, foi palco de lutas de gladiadores a obras teatrais. Atualmente, é uma das 7 Maravilhas do Mundo Moderno mais disputadas entre os visitantes',
                style: estiloTexto,
              ),
            ),
            Image(
              image: AssetImage('assets/ruinasPetra.jpg'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'Inteiramente esculpida em arenito, as Ruínas de Petra, que sobreviveram aos terremotos e à corrosão natural do tempo, são donas de uma beleza única. Não à toa, foram escolhidas como uma das 7 Maravilhas do Mundo Moderno. Localizada entre as montanhas que formam o flanco leste de Wadi Araba, vale que vai do Mar Morto ao Golfo de Aqaba, Petra foi habitada aproximadamente em 1200 a.C. pelos Nabateus, responsáveis pela bela arquitetura da cidade.',
                style: estiloTexto,
              ),
            ),
            Image(
              image: AssetImage('assets/tajMahal.jpg'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'O nome da construção foi inspirado no apelido carinhoso que o imperador deu a sua amada, Mumtaz Mahal, e significa “joia do palácio”. Taj Mahal foi erguido sob o túmulo de Aryumand Banu Begam e unido ao rio Yamuna. A criação chama a atenção ainda por ser adornada com pedras semipreciosas em todo seu interior e com fios de ouro em sua cúpula.',
                style: estiloTexto,
              ),
            ),
            Image(
              image: AssetImage('assets/grandeMuralhaChina.jpg'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'Elaborada ao longo de várias dinastias chinesas, a Grande Muralha da China começou a ser construída em 220 a.C., por ordem do primeiro imperador chinês Qin Shihuang, da dinastia Qin. A ideia da obra era oferecer proteção das invasões vindas do Norte. Com o passar do tempo, a Grande Muralha acabou se tornando uma das construções mais icônicas da história da humanidade',
                style: estiloTexto,
              ),
            ),
          ])),
    );
  }
}
