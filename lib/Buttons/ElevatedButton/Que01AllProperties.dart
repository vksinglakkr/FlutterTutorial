import 'package:flutter/material.dart';

class Que01Elevated extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que01Elevated> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Tutorial'),
      ),
      body: new ListView(children: <Widget>[
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - Default'),
        ),
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - Text Color as Green'),
//          textColor: Colors.green,
        ),
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - More Elevation'),
//          elevation: 5,
        ),
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - Color as Deep Orange'),
//          color: Colors.deepOrange,
        ),
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - With Padding'),
//          padding: new EdgeInsets.all(30),
        ),
      ]),
    );
  }
}
