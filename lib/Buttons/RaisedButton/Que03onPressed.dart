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
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Tutorial - NIC KKR'),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () => {incrementCounter()},
          child: new Text('Button Clicks - ${count}'),
        ),
      ),
    );
  }
}
