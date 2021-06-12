// lib\Buttons\ElevatedButton\Que03onPressed.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03Elevated11 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que03Elevated11> {
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que03.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Elevated - onPressed'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          new Center(
            child: new ElevatedButton(
              onPressed: () => {incrementCounter()},
              child: new Text('Button Clicks - $count'),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
