import 'package:flutter/material.dart';

class Que01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Transform.translate(
          offset: Offset(0.0, 0.0),
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

//Note: https://www.youtube.com/watch?v=9z_YNlRlWfA
