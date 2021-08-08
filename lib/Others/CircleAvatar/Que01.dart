//lib/Others/CircleAvatar/que01.dart
import 'package:flutter/material.dart';

class Que01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Border around CircleAvatar'),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.green,
          radius: 115,
          child: CircleAvatar(
            backgroundColor: Colors.greenAccent[100],
            radius: 110,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/Kurukshetra.jpg"),
              radius: 100,
            ), //CircleAvatar
          ), //CircleAvatar
        ), //CircleAvatar
      ), //Center
    );
  }
}
