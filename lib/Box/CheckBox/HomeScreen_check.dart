// lib/Box\HomeScreen_Rotated.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Box/CheckBox/Que02.dart';
import 'package:flutter_tutorial/Box/CheckBox/Que03.dart';
import 'package:flutter_tutorial/Box/CheckBox/Que04RoundShape.dart';
import 'package:flutter_tutorial/Box/CheckBox/Que05DrawCheckBoxwithOther.dart';
import 'package:flutter_tutorial/Box/CheckBox/Que06RoundCorner.dart';
import 'package:flutter_tutorial/Box/CheckBox/Que07.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01.dart';

class HomeCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("checkBox")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que03(), "lib/Box/CheckBox/Que03.dart", "Basic CheckBox"),
                  ButtonsCode(Que02(), "lib/Box/CheckBox/Que02.dart",
                      "disabled CheckBox"),
                  ButtonsCode(Que04(), "lib/Box/CheckBox/Que04RoundShape.dart",
                      "Circular Shaped CheckBox"),
                  ButtonsCode(Que06(), "lib/Box/CheckBox/Que06RoundCorner.dart",
                      "Round Corner CheckBox"),
                  ButtonsCode(
                      Que07(), "lib/Box/CheckBox/Que07.dart", "Theme CheckBox"),
                  ButtonsCode(
                      Que05(),
                      "lib/Box/CheckBox/Que05DrawCheckBoxwithOther.dart",
                      "Custom CheckBox"),
                  ButtonsCode(Que01(), "lib/Box/CheckBox/Que01.dart",
                      "generate CheckBox from List"),
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
