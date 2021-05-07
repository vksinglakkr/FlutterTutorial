import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Tutorial - NIC, KKR'),
      ),
      body: new Center(
          child: new Column(
        children: <Widget>[
          //default color
          new Text(
            'Welcome to Flutter Tutorial.',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          new Text(
            'Welcome to Flutter Tutorial.',
            style: TextStyle(
              //inbuilt named colors
              color: Colors.blue,
              fontSize: 25,
            ),
          ),
          new Text(
            'Welcome to Flutter Tutorial.',
            style: TextStyle(
              //using ARGB (Alpha Red Green Blue)
              color: Color.fromARGB(255, 255, 0, 0),
              fontSize: 25,
            ),
          ),
          new Text(
            'Welcome to Flutter Tutorial.',
            style: TextStyle(
              //using RGBO (Red Green Blue Opacity)
              color: Color.fromRGBO(0, 155, 0, 0.8),
              fontSize: 25,
            ),
          ),
        ],
      )),
    );
  }
}
