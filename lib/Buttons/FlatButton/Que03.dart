// /lib/Buttons/FlatButton/Que03.dart
import 'package:flutter/material.dart';

class Que03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextButton\n(child: .., onPressed:)'),
      ),
      body: Center(
        child: Container(
            color: Colors.black12,
            child: TextButton(
                child: Text('NIC, Kurukshetra'),
                onPressed: () {
                  print('Pressed');
                })),
      ),
    );
  }
}
