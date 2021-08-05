// lib/Icons\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Icons/Que00.dart';
import 'package:flutter_tutorial/Icons/Que03.dart';
import 'package:flutter_tutorial/Icons/Que04.dart';
import 'package:flutter_tutorial/Icons/Que05.dart';
import 'package:flutter_tutorial/Icons/Que06.dart';
import 'package:flutter_tutorial/Icons/Que07.dart';
import 'package:flutter_tutorial/Icons/Que08.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01ChangeIcon.dart';
import 'Que02ChangeColor.dart';

class HomeIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Icons")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que00(), "lib/Icons/Que00.dart", "Icons",
                  "assets/help/Icon/1 (1).jpg", "SubTitle"),
              ButtonsCode(
                  Que03(),
                  "lib/Icons/Que03.dart",
                  "How to set theme primarycolor to Icon",
                  "assets/help/Icon/1 (2).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que0111(),
                  "lib/Icons/Que01ChangeIcon.dart",
                  "Change Icon of Floating Action Button",
                  "assets/help/Icon/1 (3).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que0211(),
                  "lib/Icons/Que02ChangeColor.dart",
                  "Change color of Icons",
                  "assets/help/Icon/1 (4).jpg",
                  "SubTitle"),
              ButtonsCode(Que04(), "lib/Icons/Que04.dart", "semanticLable:",
                  "assets/help/Icon/1 (5).jpg", "SubTitle"),
              ButtonsCode(TabBarDemo(), "lib/Icons/Que05.dart", "TabBar Demo",
                  "assets/help/Icon/1 (6).jpg", "SubTitle"),
              ButtonsCode(Que06Theme(), "lib/Icons/Que06.dart", "Theme",
                  "assets/help/Icon/1 (7).jpg", "SubTitle"),
              ButtonsCode(
                  Que07(),
                  "lib/Icons/Que07.dart",
                  "Example of textDirection:",
                  "assets/help/Icon/1 (8).jpg",
                  "SubTitle"),
              ButtonsCode(Que08(), "lib/Icons/Que08.dart", "ImageIcon()",
                  "assets/help/Icon/1 (9).jpg", "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
