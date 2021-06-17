// lib/Text\Que03bShadow.dart
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03bText11 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que03bText11> {
  final String url1 = "";
  final String image1 = "assets/help/Text/Que03b.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text => FontStyle Property'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView(
          children: [
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 60,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'shadows: [Shadow(color: Colors.red, \noffset: Offset(2, -3)),],',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Column(
              children: <Widget>[
                //default color
                SizedBox(height: 10),
                Text(
                  "Shadow of the Text",
                  style: TextStyle(
                    fontSize: 30,
                    shadows: [
                      Shadow(color: Colors.red, offset: Offset(2, -3)),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Shadow of the Text",
                  style: TextStyle(
                    fontSize: 30,
                    shadows: [
                      Shadow(
                          color: Colors.red,
                          blurRadius: 10.0,
                          offset: Offset(5, 5)),
                      Shadow(
                          color: Colors.green,
                          blurRadius: 10.0,
                          offset: Offset(-10, 5)),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
