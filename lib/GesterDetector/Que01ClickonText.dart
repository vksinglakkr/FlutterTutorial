import 'package:flutter/material.dart';

class Que01Gester extends StatefulWidget {
  @override
  _Que01GesterState createState() => _Que01GesterState();
}

class _Que01GesterState extends State<Que01Gester> {
  String name = "NIC Kurukshetra";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GesterDetector=>Click'),
        ),
        body: GestureDetector(
          child: Center(
            child: Container(
              child: Text("$name"),
            ),
          ),
          onTap: () {
            setState(() {
              name = "Clicked on Text using GestureDetector";
            });
          },
        ));
  }
}
