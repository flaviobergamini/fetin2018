import 'package:flutter/material.dart';

class sobre_inatel extends StatelessWidget {
  final String titulos;
  sobre_inatel(this.titulos);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text(titulos),),
        body: new Center(
          child: new Text(titulos),
        )
    );
  }
}
