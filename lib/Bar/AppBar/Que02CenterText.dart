// lib/Bar\AppBar\Que02CenterText.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que02AppBar11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que02AppBar11> {
  final String url1 = "";
  final String image1 = "assets/help/Bar/AppBar/Que02.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("AppBar - CenterText"),
        centerTitle: true,
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
