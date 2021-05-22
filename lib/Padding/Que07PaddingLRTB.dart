import 'package:flutter/material.dart';

void main() => runApp(Que07());

class Que07 extends StatefulWidget {
  @override
  _Que07State createState() => _Que07State();
}

class _Que07State extends State<Que07> {
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
//                  padding: EdgeInsets.fromLTRB(5, 25, 50, 10),
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button'),
//                  padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
                )),
          ])),
        ));
  }
}
