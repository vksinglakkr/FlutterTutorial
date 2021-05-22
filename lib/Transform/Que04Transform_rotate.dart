import 'package:flutter/material.dart';

class Que04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Transform.rotate(
          angle: -0.5,
          origin: Offset(0.0, 0.0),
          child: Center(
            child: Container(
              height: 10,
              width: 300,
              color: Colors.red,
              //transform: Matrix4.rotationY(0.5),
              //transform: Matrix4.identity(),
              //transform: Matrix4.identity()..rotateZ(pi / 2),
              //Random Number final random = Random();
              //transform: Matrix4.rotationZ(random.nextInt(100).toDouble()),
            ),
          ),
        ),
      ),
    );
  }
}
//Note: https://www.youtube.com/watch?v=9z_YNlRlWfA
