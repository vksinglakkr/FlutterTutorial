// lib\InkWell\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/InkWell/Que03CallFunction.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import '../InkWell/Que02ClickonTextToggle.dart';
import 'Que01ClickonText.dart';
import 'Que02ClickonTextToggle.dart';

class HomeInkWell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("InkWell")),
      body: SafeArea(
          child: Container(
              child: Builder(
        builder: (context) => ListView(
          padding: EdgeInsets.all(3.0),
          children: [
            ButtonsCode(Que01InkWell11(), "lib\InkWell\Que01ClickonText.dart",
                "InkWell (on Click Change text)"),
            ButtonsCode(
                Que02InkWell11(),
                "lib\InkWell\Que02ClickonTextToggle.dart",
                "InkWell (on click Toggle text)"),
            ButtonsCode(Que03InkWell11(), "lib\InkWell\Que03CallFunction.dart",
                "How to pass Function onTap"),
          ],
        ),
      ))),
      floatingActionButton: WidgetFab(),
    );
  }
}
