//lib/Box/CheckBox/Que03.dart
//Arun
import 'package:flutter/material.dart';

class Que05 extends StatefulWidget {
  @override
  _Que05State createState() => _Que05State();
}

class _Que05State extends State<Que05> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom checkBox'),
      ),
      body: InkWell(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selected ? Colors.green : Colors.white,
                border: Border.all(width: 2, color: Colors.green)),
            child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: selected
                    ? Icon(
                        Icons.check,
                        size: 18.0,
                        color: Colors.white,
                      )
                    : Container()),
          ),
        ),
      ),
    );
  }
}
