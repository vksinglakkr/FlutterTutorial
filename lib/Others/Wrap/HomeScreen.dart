// lib/Spacer\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Wrap/Que01WrapList.dart';
import 'package:flutter_tutorial/Others/Wrap/Que02.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Wrap")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que02(), "lib/Others/Wrap/Que02.dart", "Basic",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(
                  Que01WrapExample(),
                  "lib/Others/Wrap/Que01WrapList.dart",
                  "Using List",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
