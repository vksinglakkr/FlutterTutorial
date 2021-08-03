// lib/Tab\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/GridView/Que04PreserveScroll.dart';
import 'package:flutter_tutorial/Icons/Que05.dart';
import 'package:flutter_tutorial/Tab/Que00.dart';
import 'package:flutter_tutorial/Tab/Que01Basic.dart';
import 'package:flutter_tutorial/Tab/Que01BasicController.dart';
import 'package:flutter_tutorial/Tab/Que03.dart';
import 'package:flutter_tutorial/Tab/Que04.dart';
import 'package:flutter_tutorial/Tab/Que05.dart';
import 'package:flutter_tutorial/Tab/Que06.dart';
import 'package:flutter_tutorial/Tab/Que08List.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeTabBar1 extends StatefulWidget {
  @override
  _HomeTabBar1State createState() => _HomeTabBar1State();
}

class _HomeTabBar1State extends State<HomeTabBar1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Tab")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(Que00(), "lib/Tab/Que00.dart", "Diagram",
                      "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(
                      Que0111(),
                      "lib/Tab/Que01Basic.dart",
                      "DefaultTabController",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(Que01(), "lib/Tab/Que01BasicController.dart",
                      "Controller", "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(Que03(), "lib/Tab/Que03.dart", "Controller",
                      "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(Que04(), "lib/Tab/Que04.dart", "Properties",
                      "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(Que05(), "lib/Tab/Que05.dart", "Properties",
                      "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(
                      Que06(),
                      "lib/Tab/Que06.dart",
                      "Properties(Images)",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(Que0811(), "lib/Tab/Que08List.dart", "List",
                      "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(TabBarDemo(), "lib/Icons/Que04.dart",
                      "TabBar Demo", "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(
                      Que04PreserveScroll(),
                      "lib/GridView/Que04PreserveScroll.dart",
                      "Preserve Scroll Position",
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
