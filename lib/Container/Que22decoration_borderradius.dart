import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'borderRadius App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('borderRadius Demo'),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
              //borderRadius: BorderRadius.all(Radius.circular(10.0)),
              //borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0),bottomRight: Radius.circular(25.0),bottomLeft: Radius.circular(25.0)),
              //borderRadius: BorderRadius.horizontal(left:Radius.circular(25.0),right:Radius.circular(25.0))
              //borderRadius: BorderRadius.vertical(top:Radius.circular(25.0),bottom:Radius.circular(25.0))
            ),
            child: Text('NIC Kurukshetra'),
          ),
        ),
      ),
    );
  }
}

//Note1: What is the use of decoration. Ans border,shadow,shape, borderRadius
//Note2: Can we define color outside decoration, if we used decoration. Ans No.
//Note3: Is it compulsory to set border to setup borderRadius. Ans No
