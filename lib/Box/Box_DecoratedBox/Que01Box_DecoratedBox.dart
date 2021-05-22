import 'package:flutter/material.dart';

class Que01Decorated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DecoratedBox',
      home: Scaffold(
        appBar: AppBar(
          title: Text('DecoratedBox'),
        ),
        body: new Center(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Container(
              width: 200.0,
              height: 300.0,
              color: Colors.red.withAlpha(100),
            ),
          ),
        ),
      ),
    );
  }
}
