// lib/Transform\Que01Transform_translate.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0111 extends StatelessWidget {
  final String url1 = "https://www.youtube.com/watch?v=4h5q5jfkdYg";
  final String image1 = "assets/help/Transform/Que01.png";
  final String video1 = "9z_YNlRlWfA";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Translate")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Transform.translate(
          offset: Offset(0.0, 0.0),
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
