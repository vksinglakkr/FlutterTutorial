// lib\Image\Clipping\Que01Clip.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Clip11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Image/Clipping/Que01.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("ClipRRect/BorderRadius")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(350.0),
            //borderRadius: BorderRadius.all(Radius.circular(10.0)),
            // borderRadius: BorderRadius.only(
            //     topLeft: Radius.circular(25.0),
            //     topRight: Radius.circular(25.0),
            //     bottomRight: Radius.circular(25.0),
            //     bottomLeft: Radius.circular(25.0)),
            // borderRadius: BorderRadius.horizontal(
            //   left: Radius.circular(1025.0),
            //   right: Radius.circular(1425.0)),
            //borderRadius: BorderRadius.vertical(top:Radius.circular(25.0),bottom:Radius.circular(25.0),),

            child: Image.network(
              "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
              height: 300,
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
