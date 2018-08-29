import 'package:flutter/material.dart';

class mapa_inatel extends StatelessWidget {
  final String titulom;
  mapa_inatel(this.titulom);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text(titulom),),
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(image: new AssetImage('guitar/eu.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
