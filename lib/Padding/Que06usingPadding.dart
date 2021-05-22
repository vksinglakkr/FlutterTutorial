import 'package:flutter/material.dart';

class Que06 extends StatefulWidget {
  @override
  _Que06State createState() => _Que06State();
}

class _Que06State extends State<Que06> {
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
                  child: Text('Elevated Button - Padding 25'),
//                  padding: EdgeInsets.all(25),
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button - Padding 50'),
//                  padding: EdgeInsets.all(50),
                )),
          ])),
        ));
  }
}
