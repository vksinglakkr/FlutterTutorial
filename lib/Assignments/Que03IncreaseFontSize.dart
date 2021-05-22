import 'package:flutter/material.dart';

class Que03 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que03> {
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
        ElevatedButton(
          onPressed: () {
            changeFontSize();
          },
          child: Text('Change size'),
        ),
      ])),
    );
  }
}
