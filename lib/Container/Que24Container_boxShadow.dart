import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container/boxShadow Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container/boxShadow Demo'),
        ),
        body: Center(
          child: Container(
            width: 300.0,
            height: 300.0,
            decoration: BoxDecoration(color: Colors.redAccent, boxShadow: [
              BoxShadow(
                color: Colors.blue,
                blurRadius: 8,
                spreadRadius: 20,
                offset: Offset(0, 3),
              ),
              BoxShadow(
                color: Colors.black,
                blurRadius: 18,
                spreadRadius: 10,
                offset: Offset(0, 3),
              ),
            ]),
            child: Center(child: Text('NIC Kurukshetra')),
          ),
        ),
      ),
    );
  }
}

//Note1: Que Why we use [] with boxShadow Ans Multiple boxShadow
