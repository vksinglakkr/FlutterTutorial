//  \lib/Align\HomeScreen_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Step3_MapJSON/Que01Step3.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Step3_MapJSON/Que02Step3.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeAPIStep3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Step 3 - Store/display data")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que01Step3(),
                      "lib/API/Step3_MapJSON/Que01Step3.dart",
                      "Save JSON format in MAP"),
                  ButtonsCode(
                      Que02Step3(),
                      "lib/API/Step3_MapJSON/Que02Step3.dart",
                      "Save JSON format in MAP"),
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
