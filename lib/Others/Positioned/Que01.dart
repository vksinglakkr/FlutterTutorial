// lib/Placeholder\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Positioned11 extends StatelessWidget {
  final String url1 =
      "https://www.woolha.com/tutorials/flutter-using-positioned-widget-examples"; //final Positioned
  final String image1 = "";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Positioned")),
        body: Stack(
          children: [
            //Difference between Positioned & Positioned.fill
            //if don't mention any top: bottom: etc. then
            // in case of Positioned it completely ignore that,
            // but in case of Positioned.fill it assume them as 0.
            Positioned(
                //Positioned widget can only be placed under a Stack widget.
                top: 50,
                bottom: 80,
                left: 50,
                right: 20,
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
                    color: Colors.red)),
          ],
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
