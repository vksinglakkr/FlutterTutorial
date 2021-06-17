//     ..\lib/AlertDialog\HomeScreen_Alert.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Expanded/QueExpanded.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Widgets")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      QueExpanded11(),
                      "lib/Widgets_Properties/Widgets/QueExpanded.dart",
                      "Expanded"),
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
