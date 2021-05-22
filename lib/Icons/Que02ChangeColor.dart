import 'package:flutter/material.dart';

class Que02 extends StatefulWidget {
  @override
  _Que02State createState() => _Que02State();
}

class _Que02State extends State<Que02> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial - NIC KKR'),
        ),
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
      ),
    );
  }
}
