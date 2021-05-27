import 'dart:ui';

import 'package:flutter/material.dart';

class Que01Align extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClipOval',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ClipOval/Align Demo'),
        ),
        body: ClipOval(
          child: Align(
            heightFactor: 0.7,
            widthFactor: 0.8,
            //alignment: Alignment.topLeft,
            //Difference between Start/End & Left/Right.
            //In Right to left (e.g. Urdu Start==Right, end==Left)
            //In Left to Right (e.g. English Start==Left, end==Right)
            child: Image.network(
              "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
              height: 400,
              width: 400,
            ),
          ),
        ),
      ),
    );
  }
}
