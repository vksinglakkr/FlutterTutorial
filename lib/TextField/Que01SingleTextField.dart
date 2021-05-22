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
          title: Text('NIC, Kurukshetra'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                )
              ],
            )));
  }
}
