// lib/SetUpAPK/Que03.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0311 extends StatelessWidget {
  final String url1 = "https://flutteragency.com/change-the-project-name/";
  final String image1 = "assets/help/SetUpAPK/APK.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Change \nof Project Name")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Container(),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
