import "package:flutter/material.dart";

class Que11ActionEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("actions: Ex.1"),
      actions: [
        Icon(Icons.comment),
        Icon(Icons.settings),
      ],
    ));
  }
}
