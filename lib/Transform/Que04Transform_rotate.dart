// lib/Transform\Que04Transform_rotate.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0411 extends StatelessWidget {
  final String url1 = "https://www.youtube.com/watch?v=4h5q5jfkdYg";
  final String image1 = "assets/help/Transform/Que04.png";
  final String video1 = "9z_YNlRlWfA";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Rotate")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Transform.rotate(
            angle: -0.5,
            origin: Offset(0.0, 0.0),
            child: Center(
              child: Container(
                height: 10,
                width: 300,
                color: Colors.red,
                //transform: Matrix4.rotationY(0.5),
                //transform: Matrix4.identity(),
                //transform: Matrix4.identity()..rotateZ(pi / 2),
                //Random Number final random = Random();
                //transform: Matrix4.rotationZ(random.nextInt(100).toDouble()),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
