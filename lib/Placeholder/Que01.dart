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
        body: Placeholder(
          color: Colors.blue,
          strokeWidth: 10.0,
        ),
      ),
    );
  }
}
