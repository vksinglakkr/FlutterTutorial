import 'package:flutter/material.dart';

class Que01 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial - NIC, KKR'),
        ),
        body: Center(
          child: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() => isSwitched = value);
            },
            activeTrackColor: Colors.yellow,
            activeColor: Colors.orangeAccent,
          ),
        ));
  }
}
