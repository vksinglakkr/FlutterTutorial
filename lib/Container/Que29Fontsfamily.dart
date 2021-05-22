import 'package:flutter/material.dart';

// fonts:
//     - family: Font1
//       fonts:
//         - asset: assets/font/font1.ttf
//     - family: Font2
//       fonts:
//         - asset: assets/font/font2.ttf

class Que29 extends StatefulWidget {
  @override
  _Que29State createState() => _Que29State();
}

class _Que29State extends State<Que29> {
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
