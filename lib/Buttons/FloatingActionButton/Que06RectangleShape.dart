// lib/Buttons\FloatingActionButton\Que06RectangleShape.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que06Floating11 extends StatefulWidget {
  @override
  _Que06Floating11State createState() => _Que06Floating11State();
}

class _Que06Floating11State extends State<Que06Floating11> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Buttons/FloatingActionButton/Que06.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Rectangle Shape")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
        shape: RoundedRectangleBorder(),
      ),
    );
  }
}
