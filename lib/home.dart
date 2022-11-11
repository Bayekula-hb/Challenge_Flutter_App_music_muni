import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/music.class.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  bool clickedButton = false;
  List<Music> myListMusic = [
    new Music("Mélodie venue du ciel", "Joel Kabwe Pastor",
        "images/wepik-photo-mode-2022109-112914.png", "dddddddd"),
    new Music("Fidèle", "Moise Mbiye Pastor",
        "images/wepik-photo-mode-2022109-11237.png", "urlSong")
  ];
  late Music musicNow;

  @override
  void initState() {
    super.initState();
    musicNow = myListMusic[0];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Music Challenge",
          textAlign: TextAlign.center,
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        elevation: 8.0,
        centerTitle: true,
      ),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(05.0),
        color: Colors.grey[800],
        child: new Center(
          child: new Container(
            //padding: EdgeInsets.all(20.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Image.asset("images/wepik-photo-mode-2022109-112914.png"),
                new Text(
                  "Melodie Venue Du ciel",
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                new Text(
                  "Joel Kabwe Pastor",
                  style: new TextStyle(
                    color: Colors.white70,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new IconButton(
                      onPressed: PressButton,
                      icon: Icon(Icons.skip_previous_outlined),
                      color: Colors.white,
                    ),
                    new IconButton(
                      onPressed: PressButton,
                      icon: clickedButton
                          ? Icon(Icons.play_arrow_outlined)
                          : Icon(Icons.play_arrow),
                      color: Colors.white,
                    ),
                    new IconButton(
                      onPressed: PressButton,
                      icon: Icon(Icons.skip_next_outlined),
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void PressButton() {
    setState(() {
      clickedButton = !clickedButton;
    });
  }
}
