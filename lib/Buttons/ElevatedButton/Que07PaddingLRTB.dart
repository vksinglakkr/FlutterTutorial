// lib\Buttons\ElevatedButton\Que07PaddingLRTB.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que07Elevated11 extends StatefulWidget {
  @override
  _Que07Elevated11State createState() => _Que07Elevated11State();
}

class _Que07Elevated11State extends State<Que07Elevated11> {
  final String url1 = "";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que07.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elevated - Padding LRTB'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
              child: Column(children: <Widget>[
            Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button - Default Padding'),
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button'),
//                  padding: EdgeInsets.fromLTRB(5, 25, 50, 10),
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button'),
//                  padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
                )),
          ])),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
