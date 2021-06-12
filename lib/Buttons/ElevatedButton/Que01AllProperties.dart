// lib\Buttons\ElevatedButton\Que01AllProperties.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Elevated11 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que01Elevated11> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que01.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Elevated-All Properties'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: new ListView(children: <Widget>[
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - Default'),
        ),
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - Text Color as Green'),
//          textColor: Colors.green,
        ),
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - More Elevation'),
//          elevation: 5,
        ),
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - Color as Deep Orange'),
//          color: Colors.deepOrange,
        ),
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - With Padding'),
//          padding: new EdgeInsets.all(30),
        ),
      ]),
      floatingActionButton: WidgetFab(),
    );
  }
}
