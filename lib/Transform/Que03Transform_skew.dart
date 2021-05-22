import 'package:flutter/material.dart';

class Que03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Transform(
//            transform: Matrix4.skewY(10),
//            transform: Matrix4.skewX(10),
            transform: Matrix4.skew(10, 20),
            child: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

//Note: https://www.youtube.com/watch?v=9z_YNlRlWfA
