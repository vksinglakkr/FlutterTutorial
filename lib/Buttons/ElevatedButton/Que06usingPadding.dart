import 'package:flutter/material.dart';

class Que06Elevated extends StatefulWidget {
  @override
  _Que06ElevatedState createState() => _Que06ElevatedState();
}

class _Que06ElevatedState extends State<Que06Elevated> {
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
