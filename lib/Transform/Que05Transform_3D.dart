import 'package:flutter/material.dart';

class Que05 extends StatelessWidget {
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
            transform: Matrix4.identity()
              ..setEntry(3, 2, 10 / 1000) //..setEntry(3, 2, 10 / 1000)
              ..rotateX(3.14 / 20.0), //..rotateX(3.14 / 20.0),
            alignment: FractionalOffset.bottomLeft,
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
