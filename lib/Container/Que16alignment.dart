import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'alignment App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('alignment Demo'),
        ),
        body: Container(
          alignment: Alignment.bottomRight,
          color: Colors.red,
          child: Text('NIC Kurukshetra', style: TextStyle(fontSize: 20.0)),
        ),
      ),
    );
  }
}

//Note1: try to check the difference between Align widget and alignment.
//Note2: If we also specify width alongwith alignment. Ans we get max height
//Note3: if we specify alignment we get maswidth, maxheight
//
