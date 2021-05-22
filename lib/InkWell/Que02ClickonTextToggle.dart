import 'package:flutter/material.dart';

class Que02InkWell extends StatefulWidget {
  @override
  _Que02InkWellState createState() => _Que02InkWellState();
}

class _Que02InkWellState extends State<Que02InkWell> {
  String name1 = "NIC Kurukshetra";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell=>Toggle'),
      ),
      body: InkWell(
          child: Center(
            child: Container(
              child: Text("$name1"),
            ),
          ),
          onTap: () {
            setState(() {
              if (name1 == "NIC Kurukshetra") {
                name1 = "Clicked on Text using Inkwell";
              } else {
                name1 = "NIC Kurukshetra";
              }
            });
          }),
    );
  }
}
