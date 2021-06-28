// lib/Text\Que08TextScalefactor.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que08TextScale extends StatefulWidget {
  @override
  _Que08TextScaleState createState() => new _Que08TextScaleState();
}

class _Que08TextScaleState extends State<Que08TextScale> {
  final String image1 = "assets/help/Text/Que08.png";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text => TextScalefactor Property'),
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
                        'Text("textdata", textScaleFactor:3)',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "TextScaleFactor:1",
              textScaleFactor: 1,
            ),
            SizedBox(height: 10),
            Text(
              "TextScaleFactor:2",
              textScaleFactor: 2,
            ),
            SizedBox(height: 10),
            Text(
              "TextScaleFactor:3",
              textScaleFactor: 3,
            ),
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
