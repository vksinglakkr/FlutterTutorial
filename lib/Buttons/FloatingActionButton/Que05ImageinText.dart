import 'package:flutter/material.dart';

class Que05Floating extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que05Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Image"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => print('Clicked'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          child: Text('👻', style: TextStyle(fontSize: 28.0))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
