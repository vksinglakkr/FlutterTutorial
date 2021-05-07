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
        title: new Text('Flutter Tutorial'),
      ),
      body: new ListView(children: <Widget>[
        new RaisedButton(
          onPressed: () => {},
          child: new Text('Raised Button - Default'),
        ),
        new RaisedButton(
          onPressed: () => {},
          child: new Text('Raised Button - Text Color as Green'),
          textColor: Colors.green,
        ),
        new RaisedButton(
          onPressed: () => {},
          child: new Text('Raised Button - More Elevation'),
          elevation: 5,
        ),
        new RaisedButton(
          onPressed: () => {},
          child: new Text('Raised Button - Color as Deep Orange'),
          color: Colors.deepOrange,
        ),
        new RaisedButton(
          onPressed: () => {},
          child: new Text('Raised Button - With Padding'),
          padding: new EdgeInsets.all(30),
        ),
      ]),
    );
  }
}
