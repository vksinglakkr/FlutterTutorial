// lib/Placeholder\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que04Positioned11 extends StatelessWidget {
  final String url1 =
      "https://www.woolha.com/tutorials/flutter-using-positioned-widget-examples"; //final Positioned

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Positioned.fromRect")),
        body: Stack(
          children: [
            Positioned.fromRect(
                rect: Rect.fromCenter(
                    center: Offset(100, 100), width: 150, height: 150),
                child: Container(
                    width: 1,
                    height: 1,
                    child: Center(
                      child: Text(
                          "The left, top, right, and bottom values are obtained from the Rect.",
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
