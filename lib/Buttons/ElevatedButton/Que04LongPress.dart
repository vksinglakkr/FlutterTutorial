// lib/Buttons\ElevatedButton\Que04LongPress.dart
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que04Elevated11 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que04Elevated11> {
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que04.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Elevated - LongPress'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onLongPress: () => {incrementCounter()},
              onPressed: () {},
              child: new Text('Button Clicks - $count'),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
