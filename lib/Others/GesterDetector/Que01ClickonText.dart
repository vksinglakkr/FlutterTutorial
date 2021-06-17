// lib/GesterDetector\Que01ClickonText.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Gester11 extends StatefulWidget {
  @override
  _Que01Gester11State createState() => _Que01Gester11State();
}

class _Que01Gester11State extends State<Que01Gester11> {
  String name = "NIC Kurukshetra";
  final String url1 = "";
  final String image1 = "assets/help/GesterDetector/Que01.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("GesterDetector=>Click")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            GestureDetector(
              child: Center(
                child: Container(
                  child: Text("$name"),
                ),
              ),
              onTap: () {
                setState(() {
                  name = "Clicked on Text using GestureDetector";
                });
              },
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
