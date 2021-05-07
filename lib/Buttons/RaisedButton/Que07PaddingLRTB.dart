import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Raised Button - Default Padding'),
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Raised Button'),
                  padding: EdgeInsets.fromLTRB(5, 25, 50, 10),
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Raised Button'),
                  padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
                )),
          ])),
        ));
  }
}
