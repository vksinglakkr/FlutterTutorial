import 'package:flutter/material.dart';

class Que01 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial - NIC KKR'),
      ),
      body: Row(
        children: <Widget>[
          Icon(
            Icons.access_alarm,
            size: 80,
          ),
          Icon(
            Icons.account_circle,
            size: 80,
          ),
          Icon(
            Icons.save,
            size: 80,
          ),
        ],
      ),
    );
  }
}
