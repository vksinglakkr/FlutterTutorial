//  \lib\Align\Que01heightFactorwidthfactor.dart

import 'package:flutter/material.dart';
import '../pages/BottomNavigationBar.dart';

class Que01Align11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Align/Que01.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("ClipOval/Align")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          ClipOval(
            child: Align(
              heightFactor: 0.7,
              widthFactor: 0.8,
              //alignment: Alignment.topLeft,
              //Difference between Start/End & Left/Right.
              //In Right to left (e.g. Urdu Start==Right, end==Left)
              //In Left to Right (e.g. English Start==Left, end==Right)
              child: Image.network(
                "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
                height: 400,
                width: 400,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
