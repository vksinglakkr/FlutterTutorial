// lib/Bar\HomeScreen_Bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

import 'Que01Actions.dart';
import 'Que01BackGroundColor.dart';
import 'Que02CenterText.dart';
import 'Que04PopupText.dart';
import 'Que05PopupIconicButton.dart';
import 'Que06Popup.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("AppBar")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que01AppBar11(),
                      "lib/Bar/AppBar/Que01Actions.dart",
                      "AppBar - BackGroundColor"),
                  ButtonsCode(
                      Que02AppBar11(),
                      "lib/Bar/AppBar/Que01BackGroundColor.dart",
                      "AppBar - CenterText"),
                  ButtonsCode(
                      Que01Actions11(),
                      "lib/Bar/AppBar/Que02CenterText.dart",
                      "AppBar - Iconic Buttons"),
                  ButtonsCode(
                      Que04Popup11(),
                      "lib/Bar/AppBar/Que04PopupText.dart",
                      "AppBar - 3 Dot Popup Menu (Text)"),
                  ButtonsCode(
                      Que05Popup11(),
                      "lib/Bar/AppBar/Que05PopupIconicButton.dart",
                      "AppBar - 3 Dot Popup Menu (IconicButton)"),
                  ButtonsCode(Que06Popup11(), "lib/Bar/AppBar/Que06Popup.dart",
                      "AppBar - 3 Dot Popup Menu (List)"),
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
