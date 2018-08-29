import 'package:flutter/material.dart';

class ranking_inatel extends StatelessWidget {
  final String titulor;
  ranking_inatel(this.titulor);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text(titulor),),
        body: new Center(
          child: new Text(titulor),
        )
    );
  }
}
