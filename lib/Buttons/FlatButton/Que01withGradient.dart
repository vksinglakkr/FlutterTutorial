import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
              margin: EdgeInsets.all(20),
              width: 100,
              height: 100,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                gradient: new RadialGradient(
                  colors: [Colors.blue, Colors.indigo],
                ),
              ),
              child: FlatButton(
                child: new Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: 200,
              height: 50,
              decoration: new BoxDecoration(
                gradient: new RadialGradient(
                  radius: 2,
                  colors: [Colors.yellowAccent, Colors.orange],
                ),
              ),
              child: FlatButton(
                child: new Text(
                  'Login',
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: 200,
              height: 50,
              decoration: new BoxDecoration(
                gradient: new RadialGradient(
                  radius: 3,
                  focalRadius: 5,
                  colors: [Colors.lightGreenAccent, Colors.orange],
                ),
              ),
              child: FlatButton(
                child: new Text(
                  'Login',
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: 200,
              height: 50,
              decoration: new BoxDecoration(
                gradient: new RadialGradient(
                  radius: 2,
                  colors: [
                    Colors.black45,
                    Colors.blue,
                    Colors.blueGrey,
                    Colors.blue,
                    Colors.blueGrey
                  ],
                ),
              ),
              child: FlatButton(
                child: new Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
          ]))),
    );
  }
}
