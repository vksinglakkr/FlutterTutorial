// lib/GesterDetector\Que02ClickonTextToggle.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que02Gester11 extends StatefulWidget {
  @override
  _Que02Gester11State createState() => _Que02Gester11State();
}

class _Que02Gester11State extends State<Que02Gester11> {
  final String url1 = "";
  final String image1 = "assets/help/GesterDetector/Que02.png";
  final String video1 = "";

  String name1 = "NIC Kurukshetra";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("GestureDetector=>Toggle")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            GestureDetector(
                child: Center(
                  child: Container(
                    child: Text("$name1"),
                  ),
                ),
                onTap: () {
                  setState(() {
                    if (name1 == "NIC Kurukshetra") {
                      name1 = "Clicked on Text using GestureDetector";
                    } else {
                      name1 = "NIC Kurukshetra";
                    }
                  });
                }),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
