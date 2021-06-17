// lib/TextField\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/TextField/Que01aSingleTextField.dart';
import 'package:flutter_tutorial/TextField/Que01bSingleTextField.dart';
import 'package:flutter_tutorial/TextField/Que04Disable.dart';
import 'package:flutter_tutorial/TextField/Que05AutoFocus.dart';
import 'package:flutter_tutorial/TextField/Que06FocusNode.dart';
import 'package:flutter_tutorial/TextField/Que07onChanged.dart';
import 'package:flutter_tutorial/TextField/Que08Controller.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01SingleTextField.dart';
import 'Que02UsernamePassword.dart';
import 'Que03CursorColor.dart';

class HomeTextField extends StatelessWidget {
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
                      Que0111(),
                      "lib/TextField/Que01SingleTextField.dart",
                      "Text Field & Properties(1)"),
                  ButtonsCode(
                      Que01a11(),
                      "lib/TextField/Que01aSingleTextField.dart",
                      "Text Field & Properties(2)"),
                  ButtonsCode(
                      Que01b11(),
                      "lib/TextField/Que01aSingleTextField.dart",
                      "Text Field & Properties(3)"),
                  ButtonsCode(
                      Que0211(),
                      "lib/TextField/Que02UsernamePassword.dart",
                      "Login Page - Username & Password"),
                  ButtonsCode(Que0311(), "lib/TextField/Que03CursorColor.dart",
                      "Cursor Color"),
                  ButtonsCode(Que0411(), "lib/TextField/Que04Disable.dart",
                      "How to disable textField?"),
                  ButtonsCode(
                      Que05Auto11(),
                      "lib/TextField/Que05AutoFocus.dart",
                      "How to set Focus using autofocus?"),
                  ButtonsCode(
                      Que06FocusNode11(),
                      "lib/TextField/Que06FocusNode.dart",
                      "How to set Focus using FocusNode?"),
                  ButtonsCode(
                      Que07onChanged11(),
                      "lib/TextField/Que07onChanged.dart",
                      "Handle changes using onChanged?"),
                  ButtonsCode(
                      Que08Controller11(),
                      "lib/TextField/Que08Controller.dart",
                      "Handle changes using Controller?"),
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
