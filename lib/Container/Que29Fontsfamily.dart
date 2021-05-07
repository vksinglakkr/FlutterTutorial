import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

// fonts:
//     - family: Font1
//       fonts:
//         - asset: assets/font/font1.ttf
//     - family: Font2
//       fonts:
//         - asset: assets/font/font2.ttf

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Container Fonts Family"),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            'Welcome to NIC, Kurukshetra',
            style: TextStyle(
                fontFamily: "Font1", fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Welcome to NIC, Kurukshetra',
              style: TextStyle(
                  fontFamily: "Font2",
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )),
      ])),
    );
  }
}
