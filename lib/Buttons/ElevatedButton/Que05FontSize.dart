import 'package:flutter/material.dart';

class Que05Elevated extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que05Elevated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial - NIC KKR'),
      ),
      body: Center(
          child: Column(children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: Text('Button - Default Text Size'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Button - Font Size 25',
            style: TextStyle(fontSize: 20),
          ),
        ),
        ElevatedButton(
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
