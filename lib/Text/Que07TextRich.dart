// lib/Text\Que07TextRich.dart
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que07TextSpan extends StatefulWidget {
  @override
  _Que07TextSpanState createState() => new _Que07TextSpanState();
}

class _Que07TextSpanState extends State<Que07TextSpan> {
  final String image1 = "assets/help/Text/Que07.png";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text => TextSpan Property'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
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
                        'Text.rich(TextSpan(children:[TextSpan(...) ...])))',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: 'I like',
                children: [
                  TextSpan(
                      text: ' flutter ',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20.0,
                      )),
                  TextSpan(
                      text: 'it is really',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 16.0,
                      )),
                  TextSpan(
                      text: ' wonderful ',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.green,
                        fontSize: 12.0,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
