import 'package:flutter/material.dart';

class Que04Elevated extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que04Elevated> {
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
      body: Center(
        child: ElevatedButton(
          onLongPress: () => {incrementCounter()},
          onPressed: () {},
          child: new Text('Button Clicks - $count'),
        ),
      ),
    );
  }
}
