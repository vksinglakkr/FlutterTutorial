//  /lib/Others/CircleAvatar/HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/CircleAvatar/Que01.dart';
import 'package:flutter_tutorial/Others/CircleAvatar/Que02.dart';
import 'package:flutter_tutorial/Others/CircleAvatar/Que03.dart';
import 'package:flutter_tutorial/Others/CircleAvatar/Que04.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeCircleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("CircleAvatar")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que01(),
                  "lib/Others/CircleAvatar/Que01.dart",
                  "How to add a border around the CircleAvatar",
                  "assets/help/Others/CircleAvatar/Border.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que02(),
                  "lib/Others/CircleAvatar/Que02.dart",
                  "Alternate of CircleAvatar",
                  "assets/help/Others/CircleAvatar/Clip.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que03(),
                  "lib/Others/CircleAvatar/Que03.dart",
                  "Basic code of CircleAvatar",
                  "assets/help/Others/CircleAvatar/Clip.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que04(),
                  "lib/Others/CircleAvatar/Que04.dart",
                  "Text With in CircleAvatar",
                  "assets/help/Others/CircleAvatar/Clip.jpg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
