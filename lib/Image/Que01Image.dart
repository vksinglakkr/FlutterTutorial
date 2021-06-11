// lib\Image\Que01Image.dart
import 'package:flutter/material.dart';

import 'BottomNavigationBar.dart';

class Que01Image11 extends StatelessWidget {
  final String url1 =
      "https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html";
  final String image1 = "assets/help/Image/Que01.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image(image: AssetImage())'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          //Image.network('https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg'),
          //Image.asset('assets/images/Kurukshetra.jpg'),
          //Image(image:NetworkImage('https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg'),),
          Image(
            image: AssetImage('assets/images/Kurukshetra.jpg'),
          ),

          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/Que01aImage.jpg'),
            ),
          ),
          Text("Image/Que01Image.dart")
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
