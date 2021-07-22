// lib/Drawer/Que05.dart
import 'package:flutter/material.dart';

class Que05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design Diagram'),
      ),
      body: Center(
          child: Image(image: AssetImage("assets/help/Drawer/Drawer.png"))),
    );
  }
}
