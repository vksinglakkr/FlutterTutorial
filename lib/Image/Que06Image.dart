// lib/Image\Que06Image.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que06Image11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Image/Que06.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("FadeInImage.assetNetwork()")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Center(
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif',
                image: 'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg',
              ),
            ),
            Image(
              image: AssetImage('assets/images/loading.gif'),
              height: 100,
              fit: BoxFit.fill,
            ),
            Text("Image/Que06Image.dart"),
            SizedBox(height: 10.0),
            Image(
              image: AssetImage('assets/images/Que06Image.jpg'),
              height: 100,
              fit: BoxFit.fill,
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
