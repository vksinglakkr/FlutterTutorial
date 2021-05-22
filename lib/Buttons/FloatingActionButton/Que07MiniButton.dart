import 'package:flutter/material.dart';

class Que07Floating extends StatefulWidget {
  @override
  _Que07FloatingState createState() => _Que07FloatingState();
}

class _Que07FloatingState extends State<Que07Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Mini Size"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
        mini: true,
      ),
    );
  }
}
