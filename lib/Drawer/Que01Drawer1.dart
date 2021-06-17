// lib/Drawer\Que01Drawer1.dart
import 'package:flutter/material.dart';

import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0111 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Drawer/Que01.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(title: WidgetAppBar("Home")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Text("Drawer Demo"),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
