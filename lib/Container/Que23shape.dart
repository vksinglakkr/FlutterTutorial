import 'package:flutter/material.dart';

class Que23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container/Shape Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container/Shape Demo'),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.redAccent,
            shape: BoxShape.circle,
            //shape: BoxShape.rectangle,
          ),
          child: Center(child: Text('NIC Kurukshetra')),
        ),
      ),
    );
  }
}

//Note1: We have to use Centre widget with Text, Otherwise text will display outside Shape
//Note2: Check with center and without center.
//
