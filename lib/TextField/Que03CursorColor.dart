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
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
              cursorColor: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
