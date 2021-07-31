//Arun size,color

import 'package:flutter/material.dart';

class Que07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Icons with right-to-left \ntext direction'),
      ),
      body: new Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text("textDirection: TextDirection.ltr"),
            Row(
              children: [
                new Icon(
                  Icons.battery_unknown,
                  size: 160.0,
                  textDirection: TextDirection.ltr,
                ),
                new Icon(
                  Icons.info,
                  size: 160.0,
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text("textDirection: TextDirection.rtl"),
            Row(
              children: [
                new Icon(
                  Icons.battery_unknown,
                  size: 160.0,
                  textDirection: TextDirection.rtl,
                ),
                new Icon(
                  Icons.info,
                  size: 160.0,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
            Text("Note: It flipped the icons"),
          ],
        ),
      ),
    );
  }
}
