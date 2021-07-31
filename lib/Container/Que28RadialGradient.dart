// lib/Container\Que28gradient.dart
import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que2811Ex1 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que28.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Gradient")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 180,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  tileMode: TileMode.mirror,
                  colors: [Colors.purple, Colors.red],
                  stops: const <double>[
                    0.5,
                    0.3
                  ], //"colors" and "colorStops" arguments must have equal length.
//                  stops: const <double>[0.0, 0.3, 0.3, 0.7, 0.7, 1.0], //"colors" and "colorStops" arguments must have equal length.
                  //begin: Alignment.centerLeft,
                  begin: Alignment(-1.0, 1),
                  //begin: FractionalOffset.topLeft,
                  //end: Alignment.centerRight,
                  end: FractionalOffset.centerRight,
                  transform: GradientRotation(math.pi / 4),
                ),
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
            ),
            Container(
              width: 300,
              height: 80,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  tileMode: TileMode.mirror,
                  colors: [Colors.purple, Colors.red],
                ),
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
            ),
            Container(
              width: 300,
              height: 80,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                gradient: SweepGradient(
                  tileMode: TileMode.mirror,
                  colors: [Colors.purple, Colors.red],
                ),
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
