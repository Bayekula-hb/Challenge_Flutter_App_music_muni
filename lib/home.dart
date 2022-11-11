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
  bool clickedButtonPlay = false;
  int indexMusicNow = 0;
  int sizeListMusic = 0;
  List<Music> myListMusic = [
    new Music("Fidèle", "Moise Mbiye Pastor",
        "images/wepik-photo-mode-2022109-11237.png", "urlSong"),
    new Music("Mélodie venue du ciel", "Joel Kabwe Pastor",
        "images/wepik-photo-mode-2022109-112914.png", "dddddddd"),
  ];
  late Music musicNow;
  double position = 0.0;

  @override
  void initState() {
    super.initState();
    musicNow = myListMusic[indexMusicNow];
    sizeListMusic = myListMusic.length;
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
        backgroundColor: Colors.grey,
        elevation: 8.0,
        centerTitle: true,
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Card(
              elevation: 8.0,
              child: new Container(
                color: Colors.blueGrey,
                child: new Image.asset(musicNow.imgPath),
              ),
            ),
            textCustome(musicNow.titleSong, 20.0, Colors.black, 20.0),
            textCustome(musicNow.authSong, 16.0, Colors.black45, 20.0),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new IconButton(
                  onPressed: PressButtonPrevious,
                  icon: Icon(Icons.skip_previous_outlined),
                  color: Colors.black,
                ),
                new IconButton(
                  onPressed: PressButton,
                  icon: clickedButtonPlay
                      ? Icon(Icons.pause)
                      : Icon(Icons.play_arrow),
                  color: Colors.black,
                ),
                new IconButton(
                  onPressed: PressButtonNext,
                  icon: Icon(Icons.skip_next_outlined),
                  color: Colors.black,
                ),
              ],
            ),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textCustome("0.0", 20.0, Colors.black, 20.0),
                new Slider(
                    value: position,
                    min: 0.0,
                    max: 40.0,
                    activeColor:
                        clickedButtonPlay ? Colors.red : Colors.black38,
                    onChanged: (double d) {
                      setState(() {
                        position = d;
                      });
                    }),
                textCustome("1:20", 16.0, Colors.black, 20.0),
              ],
            ),
          ],
        ),
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        // padding: EdgeInsets.all(05.0),
        // color: Colors.grey[800],
        // child: new Center(
        //   child: new Container(
        //     //padding: EdgeInsets.all(20.0),
        //     child: new Column(
        //       crossAxisAlignment: CrossAxisAlignment.stretch,
        //       children: <Widget>[
        //         new Image.asset(musicNow.imgPath),
        //         new Text(
        //           "Melodie Venue Du ciel",
        //           style: new TextStyle(
        //             color: Colors.white,
        //             fontSize: 22.0,
        //           ),
        //           textAlign: TextAlign.center,
        //         ),
        //         new Text(
        //           "Joel Kabwe Pastor",
        //           style: new TextStyle(
        //             color: Colors.white70,
        //             fontSize: 20.0,
        //           ),
        //           textAlign: TextAlign.center,
        //         ),
        //         new Row(
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             new IconButton(
        //               onPressed: PressButton,
        //               icon: Icon(Icons.skip_previous_outlined),
        //               color: Colors.white,
        //             ),
        //             new IconButton(
        //               onPressed: PressButton,
        //               icon: clickedButtonPlay
        //                   ? Icon(Icons.play_arrow_outlined)
        //                   : Icon(Icons.play_arrow),
        //               color: Colors.white,
        //             ),
        //             new IconButton(
        //               onPressed: PressButton,
        //               icon: Icon(Icons.skip_next_outlined),
        //               color: Colors.white,
        //             ),
        //           ],
        //         )
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }

  void PressButton() {
    setState(() {
      clickedButtonPlay = !clickedButtonPlay;
    });
  }

  void PressButtonPrevious() {
    indexMusicNow > 0
        ? setState(() {
            indexMusicNow = indexMusicNow - 1;
          })
        : "";
    print(indexMusicNow);
  }

  void PressButtonNext() {
    indexMusicNow < sizeListMusic - 1
        ? setState(() {
            indexMusicNow = indexMusicNow + 1;
          })
        : "";
    print(indexMusicNow);
  }

  Text textCustome(
      String data, double scale, Color colorText, double txtFontSize) {
    return new Text(
      data,
      style: new TextStyle(
        color: colorText,
        fontSize: txtFontSize,
      ),
    );
  }
}
