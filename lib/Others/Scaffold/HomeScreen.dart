// lib/Spacer\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Scaffold/Que02.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01.dart';

class HomeScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Spacer")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que01(), "lib/Others/Scaffold/Que01.dart", "Scaffold"),
              ButtonsCode(ScaffoldPage(), "lib/Others/Scaffold/Que02.dart",
                  "Scaffold 2"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
