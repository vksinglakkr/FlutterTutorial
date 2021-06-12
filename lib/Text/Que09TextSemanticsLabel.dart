// lib\Text\Que09TextSemanticsLabel.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que09TextSemantics extends StatefulWidget {
  @override
  _Que09TextSemanticsState createState() => new _Que09TextSemanticsState();
}

class _Que09TextSemanticsState extends State<Que09TextSemantics> {
  final String url1 = "";
  final String image1 = "assets/help/Text/Que09.png";
  final String video1 = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text => SemanticsLabel Property'),
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
//                    child: Align(
//                      alignment: Alignment.center,
//                      child: TextSpan(
//                        text: '$$, semanticsLabel:"Double dollars"),
                    //                     ),
                    //                   ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              r'$$',
              semanticsLabel: 'Double dollars',
            ),
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
