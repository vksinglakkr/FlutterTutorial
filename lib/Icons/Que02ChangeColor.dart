import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
