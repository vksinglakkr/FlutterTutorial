// lib/Box\HomeScreen_Fitted.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Box/Box_FittedBox/Que05.dart';
import 'package:flutter_tutorial/Box/Box_FittedBox/Que05a.dart';
import 'package:flutter_tutorial/Box/Box_FittedBox/Que06.dart';
import 'package:flutter_tutorial/Box/Box_FittedBox/Que07.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

import 'Que01Fitted.dart';
import 'Que02ImageOverflow.dart';
import 'Que03textOverFlow.dart';

//import 'Box_FittedBox.dart';

class HomeFitted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Fitted Box")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(Que05(), "lib/Box/Box_FittedBox/Que05.dart",
                      "Properties", "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(Que05a(), "lib/Box/Box_FittedBox/Que05a.dart",
                      "Properties", "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(
                      Que02ImageOverflow11(),
                      "lib/Box/Box_FittedBox/Que02ImageOverflow.dart",
                      "Tackle Image Overflow",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01Fitted11(),
                      "lib/Box/Box_FittedBox/Que01Fitted.dart",
                      "Image Stretching",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03TextOverflow11(),
                      "lib/Box/Box_FittedBox/Que03textOverFlow.dart",
                      "Tackle Text Overflow",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que06(),
                      "lib/Box/Box_FittedBox/Que06.dart",
                      "Text with or without FittedBox",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que07(),
                      "lib/Box/Box_FittedBox/Que07.dart",
                      "Problem of Tiny logo",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
