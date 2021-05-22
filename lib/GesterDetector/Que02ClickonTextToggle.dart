import 'package:flutter/material.dart';

class Que02Gester extends StatefulWidget {
  @override
  _Que02GesterState createState() => _Que02GesterState();
}

class _Que02GesterState extends State<Que02Gester> {
  String name1 = "NIC Kurukshetra";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector=>Toggle'),
      ),
      body: GestureDetector(
          child: Center(
            child: Container(
              child: Text("$name1"),
            ),
          ),
          onTap: () {
            setState(() {
              if (name1 == "NIC Kurukshetra") {
                name1 = "Clicked on Text using GestureDetector";
              } else {
                name1 = "NIC Kurukshetra";
              }
            });
          }),
    );
  }
}
