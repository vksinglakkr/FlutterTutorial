import 'dart:math';

import 'package:flutter/material.dart';

class Que15 extends StatelessWidget {
  final random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transform App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transform App Bar'),
        ),
        body: Center(
          child: Container(
            width: 150,
            height: 50,
            color: Colors.blue,
            //transform: null,
            transform: Matrix4.rotationZ(0.05),
            //transform: Matrix4.identity(),
            //transform: Matrix4.identity()..rotateZ(pi / 2),

            //Random Number
            //transform: Matrix4.rotationZ(random.nextInt(100).toDouble()),

            child: Center(
              child: Text("NIC Kurukshetra", style: TextStyle(fontSize: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
