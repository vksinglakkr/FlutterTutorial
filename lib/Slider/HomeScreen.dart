// lib/Slider\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Slider/Que02.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01.dart';

class HomeSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Slider")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que02(), "lib/Slider/Que02.dart", "Slider Basic Code"),
              ButtonsCode(Que0111(), "lib/Slider/Que01.dart",
                  "Assignment: Slider to Transform Container"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
