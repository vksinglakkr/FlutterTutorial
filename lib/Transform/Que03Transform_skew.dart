// lib\Transform\Que03Transform_skew.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que0311 extends StatelessWidget {
  final String url1 = "https://www.youtube.com/watch?v=4h5q5jfkdYg";
  final String image1 = "assets/help/Transform/Que03.png";
  final String video1 = "9z_YNlRlWfA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Skew'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: Column(
          children: [
            Transform(
//            transform: Matrix4.skewY(10),
//            transform: Matrix4.skewX(10),
              transform: Matrix4.skew(10, 20),
              child: Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
