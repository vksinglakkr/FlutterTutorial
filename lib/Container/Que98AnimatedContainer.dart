import 'dart:math';
import 'package:flutter/material.dart';

class Que98 extends StatefulWidget {
  @override
  _Que98State createState() => _Que98State();
}

class _Que98State extends State<Que98> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Container',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Container Demo'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            child: Center(
              child: Text('Demo',
                  style: TextStyle(
                    fontSize: 15.0,
                  )),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              final random = Random();
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();
              _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                  random.nextInt(256), 1);
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          tooltip: 'Play',
          child: Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
