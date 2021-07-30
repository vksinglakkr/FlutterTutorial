// lib/Placeholder\HomeScreen.dartlib\Placeholder\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Placeholder/Que01.dart';
import 'package:flutter_tutorial/Others/Placeholder/Que02.dart';
import 'package:flutter_tutorial/Others/Placeholder/Que03.dart';
import 'package:flutter_tutorial/Others/Placeholder/Que04.dart';
import 'package:flutter_tutorial/Others/Placeholder/Que05.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomePlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Placeholder")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que0111(), "lib/Placeholder/Que01.dart", "Basic Placeholder"),
              ButtonsCode(Que02(), "lib/Placeholder/Que02.dart",
                  "color: & strokeWidth:"),
              ButtonsCode(Que03(), "lib/Placeholder/Que03.dart",
                  "fallbackHeight: \nNo effect without Parent"),
              ButtonsCode(Que04(), "lib/Placeholder/Que04.dart",
                  "fallbackHeight: \nWith Parent"),
              ButtonsCode(Que05(), "lib/Placeholder/Que05.dart",
                  "Multiple Placeholder"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
