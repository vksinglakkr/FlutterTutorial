// lib\Image\Clipping\Que06Clip.dart
import 'package:flutter/material.dart';
import '../BottomNavigationBar.dart';

class Que06Clip11 extends StatelessWidget {
  final String url1 =
      "https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html";
  final String image1 = "assets/help/Image/Clipping/Que06.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipOval/Circle Demo'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          ClipOval(
            child: Image.network(
              "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
