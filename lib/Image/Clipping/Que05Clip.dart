// lib\Image\Clipping\Que05Clip.dart
import 'package:flutter/material.dart';
import '../BottomNavigationBar.dart';

class Que05Clip11 extends StatelessWidget {
  final String url1 =
      "https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html";
  final String image1 = "assets/help/Image/Clipping/Que05.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipOval/Align '),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          ClipOval(
            child: Align(
              heightFactor: 0.7,
              widthFactor: 0.8,
              alignment: Alignment.topLeft,
              child: Image.network(
                "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
                height: 400,
                width: 400,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.purple.shade300,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
