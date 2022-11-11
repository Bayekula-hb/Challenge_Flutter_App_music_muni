import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Ciné Movies"),
        foregroundColor: Colors.white,
      ),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(05.0),
        color: Colors.black,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topLeft,
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            "Salut Bienvenue",
                            textAlign: TextAlign.justify,
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          new Text(
                            "Suivez les détails de vos films ici",
                            textAlign: TextAlign.start,
                            style: new TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                      new Column(
                        children: <Widget>[
                          new Icon(
                            Icons.account_circle,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            new Container(
              width: MediaQuery.of(context).size.width / 2,
              color: Colors.white54,
              margin: EdgeInsets.all(10.0),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        new Text(
                          "Titre du film",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            new Row(
              children: [
                new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[],
                ),
              ],
            ),
          ],
        ),
        //child: new Center(
        /*child: new Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
         
        ),*/
        //),
      ),
    );
  }
}
