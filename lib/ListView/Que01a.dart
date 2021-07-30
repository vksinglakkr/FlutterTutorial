import 'package:flutter/material.dart';

class Que01a extends StatefulWidget {
  @override
  _Que01aState createState() => _Que01aState();
}

class _Que01aState extends State<Que01a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView with Text'),
      ),
      body: ListView(
        children: [
          ListTile(title: Text('Text A')),
          ListTile(title: Text('Text B')),
          ListTile(title: Text('Text C')),
          ListTile(title: Text('Text D')),
        ],
      ),
    );
  }
}
