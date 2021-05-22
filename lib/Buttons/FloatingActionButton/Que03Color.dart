import 'package:flutter/material.dart';

class Que03Floating extends StatefulWidget {
  @override
  _Que03FloatingState createState() => _Que03FloatingState();
}

class _Que03FloatingState extends State<Que03Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Color"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        backgroundColor: Colors.lightGreen,
        onPressed: () => setState(() {
          //do something
        }),
      ),
    );
  }
}
