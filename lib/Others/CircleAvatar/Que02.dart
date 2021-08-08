//lib/Others/CircleAvatar/que01.dart
import 'package:flutter/material.dart';

class Que02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alternate of CircleAvatar'),
      ),
      body: Center(
        child: ClipOval(
          child: Image(
            image: AssetImage("assets/images/Kurukshetra.jpg"),
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
      ), //Center
    );
  }
}
