import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial - NIC KKR'),
      ),
      body: Center(
          child: Column(children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: Text('Button - Default Text Size'),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text(
            'Button - Font Size 25',
            style: TextStyle(fontSize: 20),
          ),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text(
            'Button - Font Size 30',
            style: TextStyle(fontSize: 30),
          ),
        )
      ])),
    );
  }
}
