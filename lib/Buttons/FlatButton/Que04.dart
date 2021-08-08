// /lib/Buttons/FlatButton/Que04.dart
import 'package:flutter/material.dart';

class Que04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextButton.icon\n(label: .., icon: .., onPressed:)'),
      ),
      body: Center(
        child: Container(
            color: Colors.black12,
            child: TextButton.icon(
                label: Text('NIC, Kurukshetra'),
                icon: Icon(Icons.web),
                onPressed: () {
                  print('Pressed');
                })),
      ),
    );
  }
}
