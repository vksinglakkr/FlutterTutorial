import 'package:flutter/material.dart';

class Que03 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que03> {
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
            size: 60,
          ),
          Icon(
            Icons.account_circle,
            size: 60,
          ),
          Expanded(
            child: Icon(
              Icons.save,
              size: 60,
            ),
          ),
          Expanded(
            child: Icon(
              Icons.volume_up,
              size: 60,
            ),
          ),
        ],
      ),
    );
  }
}
