import 'package:flutter/material.dart';

class Que02 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial - NIC KKR'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Icon(
              Icons.access_alarm,
              size: 80,
            ),
          ),
          Expanded(
            child: Icon(
              Icons.account_circle,
              size: 80,
            ),
          ),
          Expanded(
            child: Icon(
              Icons.save,
              size: 80,
            ),
          ),
        ],
      ),
    );
  }
}
