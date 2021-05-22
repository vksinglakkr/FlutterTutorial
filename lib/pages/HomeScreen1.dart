// HomeScreen.dart

import 'package:flutter/material.dart';

//import './SecondScreen.dart';

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  String name1 = "NIC Kurukshetra";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector Demo'),
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
