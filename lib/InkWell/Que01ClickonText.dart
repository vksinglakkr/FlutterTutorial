import 'package:flutter/material.dart';

class Que01InkWell extends StatefulWidget {
  @override
  _Que01State createState() => _Que01State();
}

class _Que01State extends State<Que01InkWell> {
  String name = "NIC Kurukshetra";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('InkWell=>Click'),
        ),
        body: InkWell(
          child: Center(
            child: Container(
              child: Text("$name"),
            ),
          ),
          onTap: () {
            setState(() {
              name = "Clicked on Text using InkWell";
            });
          },
        ));
  }
}
