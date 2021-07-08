// lib/Box\HomeScreen_Sized.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Box/Box_SizedBox/Que04.dart';
import 'package:flutter_tutorial/Box/Box_SizedBox/Que05.dart';
import 'package:flutter_tutorial/Box/Box_SizedBox/Que06.dart';
import 'package:flutter_tutorial/Box/Box_SizedBox/Que07.dart';
import 'package:flutter_tutorial/Box/Box_SizedBox/Que08.dart';
import 'package:flutter_tutorial/Box/Box_SizedBox/Que11Limited.dart';
import 'package:flutter_tutorial/Box/Box_SizedBox/Que12Limited.dart';
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
                  ButtonsCode(Que03Sized11(), "lib/Box/Box_SizedBox/Que03.dart",
                      "SizedBox (Usage)"),
                  ButtonsCode(Que04(), "lib/Box/Box_SizedBox/Que04.dart",
                      "SizedBox.expand"),
                  ButtonsCode(Que05(), "lib/Box/Box_SizedBox/Que05.dart",
                      "SizedBox.fromSize"),
                  ButtonsCode(Que07(), "lib/Box/Box_SizedBox/Que07.dart",
                      "SizedBox.shrink"),
                  ButtonsCode(Que06(), "lib/Box/Box_SizedBox/Que06.dart",
                      "Different Boxes"),
                  ButtonsCode(Que08(), "lib/Box/Box_SizedBox/Que08.dart",
                      "Multiple FractionallySizedBox"),
                  ButtonsCode(Que11(), "lib/Box/Box_SizedBox/Que11Limited.dart",
                      "SizedBox / LimitedBox / SizedOverFlowBox"),
                  ButtonsCode(Que12(), "lib/Box/Box_SizedBox/Que12Limited.dart",
                      "FractionallySizedBox / OverflowBox"),
                  ButtonsCode(
                      Que01Sized11(),
                      "lib/Box/Box_SizedBox/Que01Simple.dart",
                      "Sized Box - Simple"),
                  ButtonsCode(
                      Que02Sized11(),
                      "lib/Box/Box_SizedBox/Que02ListView.dart",
                      "Sized Box - ListView"),
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
