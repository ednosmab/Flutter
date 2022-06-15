import 'package:flutter/material.dart';

class Imagem extends StatelessWidget {
  Imagem({this.imagem});

  var imagem;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        margin: EdgeInsets.all(5),
        // width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(100),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image(
            image: AssetImage('assets/$imagem'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
    ;
  }
}
