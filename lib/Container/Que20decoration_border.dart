import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.red, width: 10.0, style: BorderStyle.solid),
              //border: Border(right:10.0,left:20.0,bottom:25.0,top:5.0),
            ),
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}

//Note1: What is the use of decoration. Ans border,shadow,shape, borderRadius
//Note2: Can we define color outside decoration, if we used decoration. Ans No.
//
