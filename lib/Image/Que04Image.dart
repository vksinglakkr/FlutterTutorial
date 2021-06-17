// lib/Image\Que04Image.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

//https://flutter.dev/
class Que04Image11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Image/Que01.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Image(image:NetworkImage())")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Image(
              image: NetworkImage(
                  'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg'),
            ),

            //Image(image: AssetImage('assets/images/Kurukshetra.jpg')),
            SizedBox(height: 10.0),
            Image(
              image: AssetImage('assets/images/Que04Image.jpg'),
              height: 100,
              fit: BoxFit.fill,
            ),
            Text("Image/Que04Image.dart")
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
