import 'package:flutter/material.dart';

class Que03Ex2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("Leading"),
        title: Text("Flutter AppBar Tutorial"),
        actions: [Text("First action")],
      ),
      body: Center(),
    );
  }
}
