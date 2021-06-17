// lib/Tab\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01Basic.dart';
import 'Que02WithoutTabBar.dart';
import 'Que03OnlyDefaultTabController.dart';
import 'Que04WithoutTabBarView.dart';
import 'Que05WithoutDefaultTabController.dart';
import 'Que06OnlyTabBarView.dart';
import 'Que07OnlyTabBar.dart';
import 'Que08List.dart';

class HomeTabBar extends StatefulWidget {
  @override
  _HomeTabBarState createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
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
                  ButtonsCode(Que0111(), "lib/Tab/Que01Basic.dart", "Basic"),
                  ButtonsCode(Que0211(), "lib/Tab/Que02WithoutTabBar.dart",
                      "Without TabBar"),
                  ButtonsCode(
                      Que0311(),
                      "lib/Tab/Que03OnlyDefaultTabController.dart",
                      "With only Default tab Controller"),
                  ButtonsCode(Que0411(), "lib/Tab/Que04WithoutTabBarView.dart",
                      "Without tabBar View"),
                  ButtonsCode(
                      Que0511(),
                      "lib/Tab/Que05WithoutDefaultTabController.dart",
                      "Without Default Tab Controller"),
                  ButtonsCode(Que0611(), "lib/Tab/Que06OnlyTabBarView.dart",
                      "Only TabBar View"),
                  ButtonsCode(
                      Que0711(), "lib/Tab/Que07OnlyTabBar.dart", "Only TabBar"),
                  ButtonsCode(Que0811(), "lib/Tab/Que08List.dart", "List"),
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
