// lib/Buttons/ElevatedButton/Que03onPressed.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class Que02Elevated11 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que02Elevated11> {
  final String url1 = "";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que03.png";
  final String video1 = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('onPressed \nCall fn (Increment Counter)'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          new Center(
            child: new ElevatedButton(
              onPressed: () => {launch('https://kurukshetra.gov.in')},
              child: Text('District Kurukshetra website'),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
