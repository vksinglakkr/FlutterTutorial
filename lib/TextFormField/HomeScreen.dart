// lib/TextField\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/TextFormField/Que02Validation.dart';
import 'package:flutter_tutorial/TextFormField/Que03CheckSplChar.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("TextField")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que02Validation(),
                      "lib/TextFormField/Que01.dart",
                      "Form Validation-Check Empty",
                      "assets/help/TextField/tf1.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03CheckSplChar(),
                      "lib/TextFormField/Que03CheckSplChar.dart",
                      "Form Validation-Check Spl Char @",
                      "assets/help/TextField/tf2.jpeg",
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
