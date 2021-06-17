// lib/Bar\HomeScreen_Snack.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01Basic.dart';
import 'Que02ColorSnackBar.dart';
import 'Que03Duration.dart';
import 'Que04Action.dart';

class HomeSnack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Snack Bar")),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                ButtonsCode(
                    Que01SnackBar11(),
                    "lib/Bar/Snackbar/Que01Basic.dart",
                    "Don\'t Close on tap outside"),
                ButtonsCode(
                    Que02SnackBar11(),
                    "lib/Bar/Snackbar/Que02ColorSnackBar.dart",
                    "Elevated Alert Dialog Box"),
                ButtonsCode(Que03SnackBar11(),
                    "lib/Bar/Snackbar/Que03Duration.dart", "Back Ground Color"),
                ButtonsCode(Que04SnackBar11(),
                    "lib/Bar/Snackbar/Que04Action.dart", "Back Ground Color"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
