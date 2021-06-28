// lib/Placeholder\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que02Positioned11 extends StatelessWidget {
  final String url1 =
      "https://www.woolha.com/tutorials/flutter-using-positioned-widget-examples"; //final Positioned

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Positioned.directional")),
        body: Stack(
          children: [
            Positioned.directional(
                textDirection: TextDirection.rtl,
                top: 50,
                bottom: 80,
                start: 50,
                end: 20,
                child: Container(
                    width: 1,
                    height: 1,
                    child: Center(
                      child: Text(
                          "Even though the child's Container has its own size constraints, it turns out that Flutter applies the width and height calculated by  the Positioned widget.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ),
                    color: Colors.purple)),
          ],
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
