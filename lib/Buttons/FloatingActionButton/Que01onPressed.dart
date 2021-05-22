import 'package:flutter/material.dart';

class Que01Floating extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Simple Floating Action Button"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          //your dart code
          print('Yeah.. The FloatingActionButton is pressed.');
        },
      ),
    );
  }
}
