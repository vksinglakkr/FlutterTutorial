// lib\TextField\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/TextField/Que04Disable.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01SingleTextField.dart';
import 'Que02UsernamePassword.dart';
import 'Que03CursorColor.dart';

class HomeTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "Single Text Field"),
                ButtonsCode(
                    Que0211(),
                    "lib/TextField/Que02UsernamePassword.dart",
                    "Login Page - Username & Password"),
                ButtonsCode(Que0311(), "lib/TextField/Que03CursorColor.dart",
                    "Cursor Color"),
                ButtonsCode(Que0411(), "lib/TextField/Que04Disable.dart",
                    "How to disable textField?"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
