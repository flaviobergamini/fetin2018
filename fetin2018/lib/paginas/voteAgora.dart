import 'package:flutter/material.dart';

class vote_agora extends StatelessWidget {
  final String titulov;
  vote_agora(this.titulov);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(titulov),),
        body: new Container(
           decoration: new BoxDecoration(
           image: new DecorationImage(image: new AssetImage('imagens/guitar.png'),
           fit: BoxFit.cover,
        ),
      ),
    ),
    );
  }
}
