// lib\Container\Que02ContainerWithinContainer.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que02Container11 extends StatefulWidget {
  @override
  _Que02Container11State createState() => _Que02Container11State();
}

class _Que02Container11State extends State<Que02Container11> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que02.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Container within Container")),
     
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.blue,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
