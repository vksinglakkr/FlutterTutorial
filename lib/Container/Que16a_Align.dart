import 'package:flutter/material.dart';

class Que16a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'alignment App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('alignment Demo'),
        ),
        body: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            //alignment: Alignment.center,
            color: Colors.red,
            child: Text('NIC Kurukshetra', style: TextStyle(fontSize: 20.0)),
          ),
        ),
      ),
    );
  }
}

//Note1: try to check the difference between Align widget and alignment.
