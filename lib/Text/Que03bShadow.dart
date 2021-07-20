// lib/Text\Que03bShadow.dart
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03bText11 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que03bText11> {
  final String image1 = "assets/help/Text/Que03b.png";
  double sliderVal1 = 0.0;
  double sliderVal2 = 0.0;
  double sliderVal3 = 0.0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shadow'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView(
          children: [
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 60,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'shadows: [Shadow(color: ..., blurRadius: ...  \noffset: Offset(x,y)),],',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Column(
              children: <Widget>[
                SizedBox(height: 10),
                Text(
                  "NIC",
                  style: TextStyle(
                    fontSize: 180,
                    shadows: [
                      Shadow(
                          color: Colors.red,
                          blurRadius: sliderVal3,
                          offset: Offset(sliderVal1, sliderVal2)),
                      Shadow(
                          color: Colors.green,
                          blurRadius: sliderVal3,
                          offset: Offset(-sliderVal1, -sliderVal2)),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
      floatingActionButton: WidgetFab(),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('offset:'),
            SizedBox(
                width: 150,
                child: Slider(
                  value: sliderVal1,
                  min: -10.0,
                  max: 10.0,
                  divisions: 10,
                  label: sliderVal1.toStringAsFixed(1),
                  onChanged: (val) {
                    setState(() {
                      sliderVal1 = val;
                    });
                  },
                )),
            SizedBox(
                width: 150,
                child: Slider(
                  value: sliderVal2,
                  min: -10.0,
                  max: 10.0,
                  divisions: 10,
                  label: sliderVal2.toStringAsFixed(1),
                  onChanged: (val) {
                    setState(() {
                      sliderVal2 = val;
                    });
                  },
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('blurRadius:'),
            SizedBox(
                width: 250,
                child: Slider(
                  value: sliderVal3,
                  min: 0.0,
                  max: 20.0,
                  divisions: 10,
                  label: sliderVal3.toStringAsFixed(1),
                  onChanged: (val) {
                    setState(() {
                      sliderVal3 = val;
                    });
                  },
                )),
          ],
        ),
      ]),
    );
  }
}
