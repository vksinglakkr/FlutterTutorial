import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padding Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Padding Demo'),
        ),
        body: Center(
          child: Container(
            color: Colors.red,
            //padding: EdgeInsets.all(20),
            //padding: EdgeInsets.zero,
            //padding: EdgeInsets.symmetric(horizontal: 30,),
            //padding: double.infinity,
            //padding: EdgeInsets.only(left: 20.0,bottom: 30.0,),
            //padding: EdgeInsets.fromLTRB(40.0,50.0),

            //Random Number
            // padding: EdgeInsets.all(random.nextInt(5).toDouble()),
            child: Text("NIC Kurukshetra", style: TextStyle(fontSize: 30.0)),
          ),
        ),
      ),
    );
  }
}

//Note: Also check Padding as Widgets
