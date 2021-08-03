// lib/Buttons\RadioButton\HomeScreen_Flat.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01withGradient.dart';
import 'Que02LinearGradient.dart';

class HomeFlat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Flat Button ")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que01Flat11(),
                      "lib/Buttons/FlatButton/Que08PaddingOnly.dart",
                      "Gradient",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que02Flat11(),
                      "lib/Buttons/FlatButton/Que02LinearGradient.dart",
                      "Linear Gradient",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
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
