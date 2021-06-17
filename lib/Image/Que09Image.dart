// lib/Image\Que09Image.dart
//CircleAvtar
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que09Image11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Image/Que09.png";
  final String video1 = "JDDoN2THwug";

  final urlImage1 = 'assets/images/Kurukshetra.jpg';
  final urlImage2 = 'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("CircleAvatar")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(urlImage2),
              radius: 100,
            ),
            SizedBox(
              height: 100.0,
            ),
            Center(
              child: Image(
                image: AssetImage('assets/images/Que09Image.jpg'),
              ),
            ),
            Text("Image/Que09Image.dart")
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
