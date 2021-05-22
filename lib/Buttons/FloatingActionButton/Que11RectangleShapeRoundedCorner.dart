import 'package:flutter/material.dart';

class Que11Floating extends StatefulWidget {
  @override
  _Que11FloatingState createState() => _Que11FloatingState();
}

class _Que11FloatingState extends State<Que11Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          "Rectangle Shape Rounded Corner",
          style: TextStyle(fontSize: 16),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
      ),
    );
  }
}
