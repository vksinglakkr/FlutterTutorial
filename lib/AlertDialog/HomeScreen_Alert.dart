//     ..\lib\AlertDialog\HomeScreen_Alert.dart
import 'package:flutter/material.dart';
import 'Que01Basic.dart';
import 'Que02RoundedCorner.dart';
import 'Que03DontCloseonTapoutside.dart';
import 'Que04Elevation.dart';
import 'Que05BackGroundColor.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Alert Dialog Box")),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                ButtonsCode(Que01Alert11(), "lib/AlertDialog/Que01Basic.dart",
                    "Basic Example"),
                ButtonsCode(
                    Que02Alert11(),
                    "lib/AlertDialog/Que02RoundedCorner.dart",
                    "Rounded Corner Alert Dialog Box"),
                ButtonsCode(
                    Que03Alert11(),
                    "lib/AlertDialog/Que03DontCloseonTapoutside.dart",
                    "Don\'t Close on tap outside"),
                ButtonsCode(
                    Que04Alert11(),
                    "lib/AlertDialog/Que04Elevation.dart",
                    "Elevated Alert Dialog Box"),
                ButtonsCode(
                    Que05Alert11(),
                    "lib/AlertDialog/Que05BackGroundColor.dart",
                    "Changed Back Ground Color"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
