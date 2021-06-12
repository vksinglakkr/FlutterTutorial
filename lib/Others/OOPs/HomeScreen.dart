// lib\Opacity\HomeScreen.dart
import 'package:flutter/material.dart';

import 'Que01.dart';
import 'Que02.dart';
import 'Que03.dart';
import 'Que04.dart';

class HomeOpacity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OOPs'),
      ),
      body: SafeArea(
          child: Container(
              child: Builder(
        builder: (context) => ListView(
          padding: EdgeInsets.all(3.0),
          children: [
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('runApp?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que04()));
                  }),
            ),
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('Inheritance?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que01()));
                  }),
            ),
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('abstract?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que02()));
                  }),
            ),
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('constructor?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que03()));
                  }),
            ),
          ],
        ),
      ))),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.purple.shade300,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
