//     ..\lib/AlertDialog\HomeScreen_Alert.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/AlertDialog/Que10Simple.dart';
import 'package:flutter_tutorial/AlertDialog/Que20DatePicker.dart';
import 'package:flutter_tutorial/AlertDialog/Que30TimePicker.dart';
import 'package:flutter_tutorial/AlertDialog/Que40DateRange.dart';
import 'package:flutter_tutorial/Others/Theme/mainTheme.dart';
import 'package:flutter_tutorial/TextField/Assignment3.dart';
import 'Que01Basic.dart';
import 'Que02RoundedCorner.dart';
import 'Que03DontCloseonTapoutside.dart';
import 'Que04Elevation.dart';
import 'Que05BackGroundColor.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Dialog Box"),
          actions: [
            PopupMenuButton(
                itemBuilder: (BuildContext varPrefer) => [
                      PopupMenuItem(
                          child: IconButton(
                              icon: const Icon(Icons.settings),
                              color: Colors.black,
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        MainTheme(),
                                  ))))
                    ])
          ],
        ),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  Text("Alert Dialog Box",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
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
                  ButtonsCode(
                      Que03Assignment(),
                      "lib/TextField/Assignment3.dart",
                      "Show value-TextField/Controller/toast/AlertDialog"),
                  Text("Simple Dialog Box",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(Que10Simple(), "lib/AlertDialog/Que10Simple.dart",
                      "Simple Dialog Box"),
                  Text("DatePicker Dialog Box",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que20DatePicker(),
                      "lib/AlertDialog/Que20DatePicker.dart",
                      "DatePicker Dialog Box"),
                  Text("TimePicker Dialog Box",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que30TimePicker(),
                      "lib/AlertDialog/Que30TimePicker.dart",
                      "TimePicker Dialog Box"),
                  Text("Date Range Picker Dialog Box",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que40DateRangePicker(),
                      "lib/AlertDialog/Que40DateRange.dart",
                      "DateRangePicker Dialog Box"),
                  Text("ColorPicker Dialog Box",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
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
