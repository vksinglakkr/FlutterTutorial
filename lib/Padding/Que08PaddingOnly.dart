import 'package:flutter/material.dart';

class Que08 extends StatefulWidget {
  @override
  _Que08State createState() => _Que08State();
}

class _Que08State extends State<Que08> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tutorial - NIC KKR'),
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button - Default Padding'),
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button'),
//                  padding: EdgeInsets.only(left: 50, right: 50),
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button'),
//                  padding: EdgeInsets.only(top: 20),
                )),
          ])),
        ));
  }
}
