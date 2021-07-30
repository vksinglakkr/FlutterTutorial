import 'package:flutter/material.dart';

class Que01 extends StatefulWidget {
  @override
  _Que01State createState() => _Que01State();
}

class _Que01State extends State<Que01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView with Text'),
      ),
      body: ListView(
        children: [
          Text('Text A'),
          Text('Text B'),
          Text('Text C'),
        ],
      ),
    );
  }
}
