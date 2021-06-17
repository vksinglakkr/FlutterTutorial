// lib/Bar\AppBar\Que01BackGroundColor.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01AppBar11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01AppBar11> {
  final String url1 = "";
  final String image1 = "assets/help/Bar/AppBar/Que01.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("AppBar - BackGroundColor"),
          backgroundColor: Color(0xff885566),
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Container(),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
