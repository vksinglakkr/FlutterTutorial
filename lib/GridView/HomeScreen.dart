// libGridViewHomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/GridView/Que02.dart';
import 'package:flutter_tutorial/GridView/Que03.dart';
import 'package:flutter_tutorial/GridView/Que04PreserveScroll.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01gridView_Material_ClipRRect.dart';

class HomeGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("GridView")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que02GridListExample(), "lib/GridView/Que02.dart",
                  "Basic GridView.count"),
              ButtonsCode(
                  Que0111(),
                  "lib/GridView/Que01GridView_Material_ClipRRect.dart",
                  "GridView.count"),
              ButtonsCode(Que03GridViewbuilder(), "lib/GridView/Que03.dart",
                  "GridView.builder"),
              ButtonsCode(
                  Que04PreserveScroll(),
                  "lib/GridView/Que04PreserveScroll.dart",
                  "Preserve Scroll Position"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
