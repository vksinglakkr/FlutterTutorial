// lib/Buttons\FloatingActionButton\Que02CenterFloatLocation.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que02Floating11 extends StatefulWidget {
  @override
  _Que02Floating11State createState() => _Que02Floating11State();
}

class _Que02Floating11State extends State<Que02Floating11> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Buttons/FloatingActionButton/Que02.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Location")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.settings_voice),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
