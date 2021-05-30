import 'dart:ui';

import 'package:flutter/material.dart';

class Que03aText11 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que03aText11> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text => FontStyle Property'),
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
                        'If you want to have control over the distance between the text and the underline, you can use this hack. In short, you hide the actual text using Colors.transparent and then display an offset shadow that hovers above the Text underline.',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Column(
              children: <Widget>[
                //default color
                SizedBox(height: 10),
                Text(
                  "Control distance between the text and underline",
                  style: TextStyle(
                    shadows: [
                      Shadow(color: Colors.black, offset: Offset(0, -5)),
                      //  Shadow(color: Colors.red, offset: Offset(0, -10)),
                    ],
                    color: Colors.transparent,
                    //color: Colors.red,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    decorationThickness: 6,
                    decorationStyle: TextDecorationStyle.dashed,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
