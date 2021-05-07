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
            title: Text('Flutter Tutorial - NIC, KKR'),
          ),
          body: ListView(children: <Widget>[
            Container(
                padding: EdgeInsets.all(20),
                child: SelectableText(
                  'NIC Kurukshetra a group of 8 Programmers are learning Flutter.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
          ])),
    );
  }
}
