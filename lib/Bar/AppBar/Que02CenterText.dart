import 'package:flutter/material.dart';

class Que02AppBar extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que02AppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Flutter Tutorial',
        ),
      ),
      body: Container(),
    );
  }
}
