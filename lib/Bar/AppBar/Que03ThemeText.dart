import "package:flutter/material.dart";

class Que03ThemeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("textTheme:"),
            textTheme: TextTheme(
                headline6: TextStyle(
                    color: Colors.amber,
                    fontSize: 60,
                    fontWeight: FontWeight.bold))));
  }
}
