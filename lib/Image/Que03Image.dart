// lib/Image\Que03Image.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03Image11 extends StatelessWidget {
  final String url1 =
      "https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html";
  final String image1 = "assets/help/Image/Que01.png";
  final String video1 = "NH8IP1KVN84"; //final

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Image.network()")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Image.network(
              'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg',
            ),

            //Image.asset('assets/images/Kurukshetra.jpg'),
            //Image(image:NetworkImage('https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg'),),
            //Image(image: AssetImage('assets/images/Kurukshetra.jpg')),
            SizedBox(height: 50.0),
            Image(
              image: AssetImage('assets/images/Que03Image.jpg'),
              height: 100,
              fit: BoxFit.fill,
            ),
            Text("Image/Que03Image.dart")
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
