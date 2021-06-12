// lib\Icons\Que02ChangeColor.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que0211 extends StatefulWidget {
  @override
  _Que0211State createState() => _Que0211State();
}

class _Que0211State extends State<Que0211> {
  final String url1 = "";
  final String image1 = "assets/help/Icons/Que02.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaddingLRTB'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(
              Icons.cake,
              color: Colors.red,
              size: 100,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(
              Icons.settings,
              color: Colors.green,
              size: 100,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(
              Icons.voice_chat,
              color: Colors.purple,
              size: 100,
            ),
          ),
        ]),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
