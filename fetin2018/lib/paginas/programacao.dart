import 'package:flutter/material.dart';

class programacao_inatel extends StatelessWidget {
  final String titulop;
  programacao_inatel(this.titulop);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text(titulop),),
          body: new Container(
            decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage('imagens/guitar.png'),
              fit: BoxFit.cover,
            ),
          ),
        )
    );
  }
}
