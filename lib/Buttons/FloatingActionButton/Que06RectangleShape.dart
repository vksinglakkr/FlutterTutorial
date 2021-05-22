import 'package:flutter/material.dart';

class Que06Floating extends StatefulWidget {
  @override
  _Que06FloatingState createState() => _Que06FloatingState();
}

class _Que06FloatingState extends State<Que06Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Rectangle Shape"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
        shape: RoundedRectangleBorder(),
      ),
    );
  }
}
