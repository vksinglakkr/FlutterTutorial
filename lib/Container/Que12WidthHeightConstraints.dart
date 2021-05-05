import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Constraints Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('width, height & constraints Demo'),
        ),
        body: Center(
          child: Container(
            color: Colors.red,
            //   width: 200.0,
            height: 200.0,
            //media query
            //width: double.infinity,
            //width: MediaQuery.of(context).size, //error
            //Random Number
            //width: random.nextInt(200).toDouble(),
            //constraints: BoxConstraints.expand(height: 100, width: 150),
            //constraints: BoxConstraints.expand(width: 150),
            //constraints: BoxConstraints.expand(),
            //constraints: BoxConstraints.tightForFinite(width:200.0),
            //constraints: BoxConstraints(
            //     maxHeight: 200.0,
            //     minHeight: 50.0,
            //     maxWidth: 200.0,
            //     minWidth: 100.0),
            //alignment: Alignment.topLeft,
            child: Center(
                child:
                    Text("NIC Kurukshetra", style: TextStyle(fontSize: 30.0))),
          ),
        ),
      ),
    );
  }
}

//Note 1: if we wrap Text in Center widget and we have not used width, height & constraints we get the max values.
//Note 2: if we used alignment we get the max values.
//Note 3: if we set width and also set min width in constraints, then it will take width value set outside constraints.
//Note 4: What will happen if we set .expand and Alignmnet.center, width & height i.e. all 4 things. Ans Full screen.
