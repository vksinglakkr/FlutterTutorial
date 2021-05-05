import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
