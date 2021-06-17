// lib/Transform\Que02Transform_scale.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0211 extends StatelessWidget {
  final String url1 = "https://www.youtube.com/watch?v=4h5q5jfkdYg";
  final String image1 = "assets/help/Transform/Que02.png";
  final String video1 = "9z_YNlRlWfA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Scale")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Transform.scale(
            scale: 0.5,
            origin: Offset(0.0, 0.0),
            child: Center(
              child: Container(
                height: 10,
                width: 300,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
