import 'package:flutter/material.dart';

class Que05Text11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que05Text11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Flutter Tutorial - googleflutter.com"),
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
