// lib/Transform\Que05Transform_3D.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0511 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Transform/Que05.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar(" 3D")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 10 / 1000) //..setEntry(3, 2, 10 / 1000)
                ..rotateX(3.14 / 20.0), //..rotateX(3.14 / 20.0),
              alignment: FractionalOffset.bottomLeft,
              child: Container(
                height: 100.0,
                width: 100.0,
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

//Note: https://www.youtube.com/watch?v=9z_YNlRlWfA

