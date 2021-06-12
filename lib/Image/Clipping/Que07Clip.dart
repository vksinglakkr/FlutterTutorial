// lib\Image\Clipping\Que07Clip.dart
import 'package:flutter/material.dart';
import '../BottomNavigationBar.dart';

class Que07Clip11 extends StatelessWidget {
  final String url1 =
      "https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html";
  final String image1 = "assets/help/Image/Clipping/Que07.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect/BorderRadius/BoxFit'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          ClipRRect(
            //borderRadius: BorderRadius.circular(120.0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(120.0),
              topRight: Radius.circular(120.0),
              bottomRight: Radius.circular(120.0),
              bottomLeft: Radius.circular(220.0),
            ),
            child: Image.network(
              "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
