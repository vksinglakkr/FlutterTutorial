import 'package:flutter/material.dart';

class Que03Elevated extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que03Elevated> {
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
        child: new ElevatedButton(
          onPressed: () => {incrementCounter()},
          child: new Text('Button Clicks - $count'),
        ),
      ),
    );
  }
}
