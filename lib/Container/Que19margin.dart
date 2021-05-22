import 'dart:math';

import 'package:flutter/material.dart';

class Que19 extends StatelessWidget {
  final random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'margin Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('margin Demo'),
        ),
        body: Container(
          color: Colors.red,
          margin: EdgeInsets.all(20),
          //margin: EdgeInsets.symmetric(horizontal: 30,),
          //margin: double.infinity,
          //margin: EdgeInsets.only(left: 20.0,bottom: 30.0,),
          //margin: EdgeInsets.fromLTRB(40.0,50.0),

          //Random Number
          // margin: EdgeInsets.all(random.nextInt(5).toDouble()),
          child: Text("NIC Kurukshetra", style: TextStyle(fontSize: 30.0)),
        ),
      ),
    );
  }
}
