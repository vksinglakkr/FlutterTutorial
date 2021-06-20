// lib/Placeholder\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03Positioned11 extends StatelessWidget {
  final String url1 =
      "https://www.woolha.com/tutorials/flutter-using-positioned-widget-examples"; //final Positioned
  final String image1 = "";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Positioned.fill")),
        body: Stack(
          children: [
            Positioned.fill(
                top: 15,
                bottom: 15,
                left: 15,
                right: 15,
                child: Container(
                    width: 1,
                    height: 1,
                    child: Center(
                      child: Text(
                          "Difference between Positioned & Positioned.fill. If we don't mention any top: bottom: etc. then in case of Positioned it completely ignore that, but in case of Positioned.fill it assume them as 0.",
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
