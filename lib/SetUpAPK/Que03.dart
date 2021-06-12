// lib\SetUpAPK\Que03.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que0311 extends StatelessWidget {
  final String url1 = "https://flutteragency.com/change-the-project-name/";
  final String image1 = "assets/help/SetUpAPK/APK.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change \nof Project Name',
          style: TextStyle(fontSize: 16),
        ),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
