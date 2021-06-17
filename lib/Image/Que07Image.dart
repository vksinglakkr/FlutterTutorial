// lib/Image\Que07Image.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que07Image11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Image/Que07.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("repeat: ImageRepeat.repeat")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Image.network("https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
              repeat: ImageRepeat.repeat, height: 470),
          SizedBox(height: 5),
          Text("Image/Que07Image.dart")
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

//Note: https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html

