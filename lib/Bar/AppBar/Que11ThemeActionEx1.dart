import "package:flutter/material.dart";

class Que11ThemeActionEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("actions: Ex.1"),
      actions: [
        Icon(Icons.comment),
        Icon(Icons.settings),
      ],
      actionsIconTheme: IconThemeData(
        color: Colors.black,
        opacity: 10.0,
        size: 40,
      ),
//      actionsIconTheme: IconThemeData(size: 32),
    ));
  }
}
