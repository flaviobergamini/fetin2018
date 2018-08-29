import 'package:flutter/material.dart';

class ajuda_inatel extends StatelessWidget {
  final String tituloa;
  ajuda_inatel(this.tituloa);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text(tituloa),),
        body: new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage('guitar/guitar.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
    );
  }
}
