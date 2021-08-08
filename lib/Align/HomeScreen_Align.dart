//  \lib/Align\HomeScreen_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Align/Que02.dart';
import 'package:flutter_tutorial/Align/Que03Properties.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01aheightFactorwidthfactor.dart';
import 'Que01heightFactorwidthfactor.dart';

class HomeAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Align")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que02(),
                      "lib/Align/Que02.dart",
                      "Constructor & Properties",
                      "assets/help/Align/1.png",
                      "SubTitle"),
                  ButtonsCode(
                      Que01Align11(),
                      "lib/Align/Que01heightFactorwidthfactor.dart",
                      "ClipOval/ Align",
                      "assets/help/Align/2.png",
                      "SubTitle"),
                  ButtonsCode(
                      Que03(),
                      "lib/Align/Que01heightFactorwidthfactor.dart",
                      "Properties",
                      "assets/help/Align/3.png",
                      "SubTitle"),
                  ButtonsCode(
                      AlignmentWidget(),
                      "lib/Align/Que01heightFactorwidthfactor.dart",
                      "Properties",
                      "assets/help/Align/4.png",
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
