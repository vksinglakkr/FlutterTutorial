// lib/Buttons/ElevatedButton/Que08PaddingOnly.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que10Elevated11 extends StatefulWidget {
  @override
  _Que10Elevated11State createState() => _Que10Elevated11State();
}

class _Que10Elevated11State extends State<Que10Elevated11> {
  final String url1 =
      "https://www.kindacode.com/article/how-to-make-circular-buttons-in-flutter/"; //final
  final String image1 = "";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Elevated \nCircular Buttons")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text('Using ElevatedButton + ConstrainedBox'),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 180, height: 180),
                  child: ElevatedButton(
                    child: Text(
                      'Using ConstrainedBox',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                  ),
                ),
                Divider(indent: 16, endIndent: 16, thickness: 3),
                Text('Using ElevatedButton + Container'),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: Colors.red),
                  child: Container(
                    width: 180,
                    height: 180,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Text(
                      'Using Container',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
