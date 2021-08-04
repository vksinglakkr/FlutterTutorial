// lib/Bar\HomeScreen_Bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Buttons/IconicButtons/Que01.dart';
import 'package:flutter_tutorial/Buttons/IconicButtons/Que02.dart';

import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeIconic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("IconButton")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que01(),
                      "lib/Buttons/IconicButtons/Que02.dart",
                      "IconButton",
                      "assets/help/Buttons/IconicButtons/1 (1).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que02(),
                      "lib/Buttons/IconicButtons/Que02.dart",
                      "Rounded icon button",
                      "assets/help/Buttons/IconicButtons/1 (2).jpeg",
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
