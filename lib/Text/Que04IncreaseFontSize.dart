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
  double custFontSize = 20;

  void changeFontSize() async {
    setState(() {
      custFontSize += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial - NIC, KKR'),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Text(
          'Welcome to Flutter Tutorial',
          style: TextStyle(fontSize: custFontSize),
        ),
        RaisedButton(
          onPressed: () {
            changeFontSize();
          },
          child: Text('Change size'),
        ),
      ])),
    );
  }
}
