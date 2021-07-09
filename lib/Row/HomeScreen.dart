// libRowHomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Row/Que04.dart';
import 'package:flutter_tutorial/Row/Que05.dart';
import 'package:flutter_tutorial/Row/Que06.dart';
import 'package:flutter_tutorial/Row/Que07.dart';
import 'package:flutter_tutorial/Row/Que08.dart';
import 'package:flutter_tutorial/Row/Que09.dart';
import 'package:flutter_tutorial/Row/Que10.dart';
import 'package:flutter_tutorial/Row/Que11.dart';
import 'package:flutter_tutorial/Row/Que12.dart';
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
              ButtonsCode(Que04(), "lib/Row/Que04.dart", "Tackle Error"),
              ButtonsCode(Que05(), "lib/Row/Que05.dart", "Tackle Error"),
              ButtonsCode(Que06(), "lib/Row/Que06.dart", "Tackle Error"),
              ButtonsCode(Que07(), "lib/Row/Que07.dart",
                  "Flexible with Loose Fit (Required space lesser)"),
              ButtonsCode(Que08(), "lib/Row/Que08.dart",
                  "Flexible with Loose Fit (Less space required)"),
              ButtonsCode(
                  Que09(), "lib/Row/Que09.dart", "Flexible with Tight Fit"),
              ButtonsCode(Que10(), "lib/Row/Que10.dart",
                  "Expanded (Shorthand for Flexible with Tight Fit"),
              ButtonsCode(Que11(), "lib/Row/Que11.dart",
                  "SingleChildScrollView & Expanded don't come together"),
              ButtonsCode(Que12(), "lib/Row/Que12.dart", "Text Overflow"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
