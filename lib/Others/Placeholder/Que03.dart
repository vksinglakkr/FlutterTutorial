// lib/Placeholder\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03 extends StatelessWidget {
  final String image1 = "assets/help/Placeholder/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar("fallbackHeight: \nNo effect without Parent")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Placeholder(
          fallbackHeight: 200.0,
          fallbackWidth: 200.0,
          color: Colors.red,
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
