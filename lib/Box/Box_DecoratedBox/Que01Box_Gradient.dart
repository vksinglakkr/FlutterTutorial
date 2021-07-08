// lib/Box\Box_DecoratedBox\Que01Box_Gradient.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Gradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("DecoratedBox")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: new Padding(
          padding: EdgeInsets.all(16.0),
          child: DecoratedBox(
            child: Container(), //any widget
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topRight,
                  end: FractionalOffset.bottomLeft,
                  colors: <Color>[
                    Colors.black,
                    Colors.red,
                    Colors.yellowAccent
                  ]),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
