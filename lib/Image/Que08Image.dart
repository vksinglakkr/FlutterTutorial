// lib/Image\Que08Image.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que08Image11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Image/Que08.png";
  final String video1 = "JDDoN2THwug";
  final urlImage1 = 'assets/images/Kurukshetra.jpg';
  final urlImage2 = 'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("final urlImage1 = " "")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          //Image.network(urlImage2),
          //Image.asset(urlImage1),
          //Image(image:NetworkImage(urlImage2),),
          Image(image: AssetImage(urlImage1)),

          SizedBox(
            height: 100.0,
          ),
          Text("final urlImage1 = 'assets/images/Kurukshetra.jpg';"),
          Text("final urlImage2 = 'https://i.ytimg.com/maxresdefault.jpg';"),
          Center(
            child: Image(
              image: AssetImage('assets/images/Que08Image.jpg'),
            ),
          ),
          Text("Image/Que08Image.dart")
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
