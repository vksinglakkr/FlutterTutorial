import 'package:flutter/material.dart';

class Que01AppBar extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01AppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff885566),
        title: Text(
          'Flutter Tutorial - NIC KKR',
        ),
      ),
      body: Container(),
    );
  }
}
