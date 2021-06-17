// libRowHomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01Basic.dart';
import 'Que02Expanded.dart';
import 'Que03Simple.dart';

class HomeRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Row")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que0111(), "lib/Row/Que01Basic.dart", "Basic"),
              ButtonsCode(Que0211(), "lib/Row/Que02Expanded.dart", "Expanded"),
              ButtonsCode(Que0311(), "lib/Row/Que03Simple.dart",
                  "Icons adjustment in Row"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
