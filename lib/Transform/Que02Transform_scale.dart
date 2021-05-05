import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Transform.scale(
          scale: 0.5,
          origin: Offset(0.0, 0.0),
          child: Center(
            child: Container(
              height: 10,
              width: 300,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
//Note: https://www.youtube.com/watch?v=9z_YNlRlWfA
