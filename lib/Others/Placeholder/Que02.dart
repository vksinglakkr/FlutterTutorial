// lib/Placeholder\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que02 extends StatelessWidget {
  final String image1 = "assets/help/Placeholder/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("color: & strokeWidth:")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Placeholder(
          color: Colors.red,
          strokeWidth: 15,
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
