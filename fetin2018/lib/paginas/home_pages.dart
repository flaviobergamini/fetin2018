import 'package:flutter/material.dart';
import './voteAgora.dart';
import './ajuda.dart';
import './mapa.dart';
import './programacao.dart';
import './ranking.dart';
import './sobre.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void irVotar(){
    Navigator.push(context, new MaterialPageRoute(builder: (context) => new vote_agora('Vote agora!')));
  }

  void irMapa(){
    Navigator.push(context, new MaterialPageRoute(builder: (context) => new mapa_inatel('Mapa')));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("#ToNaFetin"), backgroundColor: Colors.blueAccent,),
      body: new Container(

        child: new Center(
          child: new Row(
            children: <Widget>[
              new Padding(
                  padding: new EdgeInsets.only(top:500.0, bottom: 6.0, right: 2.0, left: 50.0),
                  child: new RaisedButton(
                    child: Text('VOTAR', style: new TextStyle(fontSize: 20.0)),
                    color: Theme.of(context).primaryColor,
                    padding: new EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                    textColor: Colors.white,
                    elevation: 4.0,
                    onPressed: irVotar,
                  )),
              new Padding(
                  padding: new EdgeInsets.only(top:500.0, bottom: 6.0, left: 6.0),
                  child: new RaisedButton(
                    child: Text('MAPA', style: new TextStyle(fontSize: 20.0)),
                    color: Theme.of(context).primaryColor,
                    padding: new EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                    textColor: Colors.white,
                    elevation: 4.0,
                    onPressed: irMapa,
                  )),
            ],
          ),
        ),
        decoration: new BoxDecoration(
          image: new DecorationImage(image: new AssetImage('imagens/guitar.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: null,
                accountEmail: null,
            ),
            new ListTile(
              trailing: new Icon(Icons.home),
              title: new Text("Página Inicial"),
              onTap: () => Navigator.of(context).pop(),
            ),
            new ListTile(
              trailing: new Icon(Icons.featured_video),
              title: new Text("Vote agora!"),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contexto) => new vote_agora("Vote Agora!"))),
            ),
            new ListTile(
              trailing: new Icon(Icons.confirmation_number),
              title: new Text("Ranking"),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contexto) => new ranking_inatel("Ranking"))),
            ),
            new ListTile(
              trailing: new Icon(Icons.date_range),
              title: new Text("Programação"),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contexto) => new programacao_inatel("Programação"))),
            ),
            new ListTile(
              trailing: new Icon(Icons.map),
              title: new Text("Mapa"),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contexto) => new mapa_inatel("Mapa"))),
            ),
            new Divider(),
            new ListTile(
              trailing: new Icon(Icons.help),
              title: new Text("Ajuda"),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contexto) => new ajuda_inatel("Ajuda"))),
            ),
            new ListTile(
              trailing: new Icon(Icons.info),
              title: new Text("Sobre"),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contexto) => new sobre_inatel("Sobre"))),
            )
          ]
        ),
      ),
    );
    return new Container();
  }
}
