// lib/Box\HomeScreen_Sized.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

import 'Que01Simple.dart';
import 'Que02ListView.dart';
import 'Que03.dart';

class HomeSized extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Sized")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que01Sized11(),
                      "lib/Box/Box_SizedBox/Que01Simple.dart",
                      "Sized Box - Simple"),
                  ButtonsCode(
                      Que02Sized11(),
                      "lib/Box/Box_SizedBox/Que02ListView.dart",
                      "Sized Box - ListView"),
                  ButtonsCode(Que03Sized11(), "lib/Box/Box_SizedBox/Que03.dart",
                      "SizedBox, SizedBox.expand, SizedBox.shrink, SizedBox.fromSize"),
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
