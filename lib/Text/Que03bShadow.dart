import 'dart:ui';

import 'package:flutter/material.dart';

class Que03b extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que03b> {
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
                        'shadows: [Shadow(color: Colors.red, \noffset: Offset(2, -3)),],',
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
                //default color
                SizedBox(height: 10),
                Text(
                  "Shadow of the Text",
                  style: TextStyle(
                    fontSize: 30,
                    shadows: [
                      Shadow(color: Colors.red, offset: Offset(2, -3)),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Shadow of the Text",
                  style: TextStyle(
                    fontSize: 30,
                    shadows: [
                      Shadow(
                          color: Colors.red,
                          blurRadius: 10.0,
                          offset: Offset(5, 5)),
                      Shadow(
                          color: Colors.green,
                          blurRadius: 10.0,
                          offset: Offset(-10, 5)),
                    ],
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
