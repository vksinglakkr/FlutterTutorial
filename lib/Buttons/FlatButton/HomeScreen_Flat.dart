// lib/Buttons\RadioButton\HomeScreen_Flat.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Buttons/FlatButton/Que03.dart';
import 'package:flutter_tutorial/Buttons/FlatButton/Que04.dart';
import 'package:flutter_tutorial/Buttons/FlatButton/Que05.dart';
import 'package:flutter_tutorial/Buttons/FlatButton/Que06Theme.dart';
import 'package:flutter_tutorial/Buttons/FlatButton/Que07Shadow.dart';
import 'package:flutter_tutorial/Buttons/FlatButton/Que08Border.dart';
import 'package:flutter_tutorial/Buttons/FlatButton/Que09Shape.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01withGradient.dart';
import 'Que02LinearGradient.dart';

class HomeFlat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Flat Button ")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(Que03(), "lib/Buttons/FlatButton/Que03.dart",
                      "Basic Usage", "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(
                      Que04(),
                      "lib/Buttons/FlatButton/Que04.dart",
                      "Basic Usage of TextButton.Icon",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que05(),
                      "lib/Buttons/FlatButton/Que05.dart",
                      "style of TextButton",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que06Theme(),
                      "lib/Buttons/FlatButton/Que06Theme.dart",
                      "Theme of TextButton",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que07Shadow(),
                      "lib/Buttons/FlatButton/Que07Shadow.dart",
                      "Shadow of TextButton",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que08Border(),
                      "lib/Buttons/FlatButton/Que08Border.dart",
                      "Border of TextButton",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que09Shape(),
                      "lib/Buttons/FlatButton/Que08Border.dart",
                      "Shape of TextButton",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01Flat11(),
                      "lib/Buttons/FlatButton/Que01withGradient.dart",
                      "Gradient",
                      "assets/help/Buttons/FlatButton/1 (1).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que02Flat11(),
                      "lib/Buttons/FlatButton/Que02LinearGradient.dart",
                      "Linear Gradient",
                      "assets/help/Buttons/FlatButton/1 (2).jpeg",
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
