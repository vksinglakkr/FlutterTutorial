import 'package:flutter/material.dart';

class Que02Floating extends StatefulWidget {
  @override
  _Que02FloatingState createState() => _Que02FloatingState();
}

class _Que02FloatingState extends State<Que02Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Location"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.settings_voice),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
