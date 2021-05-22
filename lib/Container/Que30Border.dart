import 'package:flutter/material.dart';

class Que30 extends StatefulWidget {
  @override
  _Que30State createState() => _Que30State();
}

class _Que30State extends State<Que30> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tutorial - NIC KKR'),
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Text(''),
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  border: Border.all(
                    color: Colors.red,
                    width: 5,
                  )),
            ),
          ]))),
    );
  }
}
