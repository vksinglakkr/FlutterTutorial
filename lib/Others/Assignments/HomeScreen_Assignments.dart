// lib/Assignments\HomeScreen_Assignments.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Assignments/Que06GenerateRandomBackGround.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01Assignment1.dart';
import 'Que02GridView_ClipRRect_Material.dart';
import 'Que03IncreaseFontSize.dart';

class HomeAssignments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Assignments")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que0111(),
                      "lib/Assignments/Que01Assignment1.dart",
                      "Assignment on Container",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0211(),
                      "lib/Assignments/Que02GridView_ClipRRect_Material.dart",
                      "GridView/ClipRRect/Material",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0311(),
                      "lib/Assignments/Que03IncreaseFontSize.dart",
                      " Increase FontSize",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
//                  ButtonsCode(Que04Change(),
//                      "lib/Assignments/Que04ChangeLocationofFloatingActionButtonwithRadioButton.dart", "Color Picker","assets/help/Que01.jpg","SubTitle"), ButtonsCode(Que05Color(),,"assets/help/Que01.jpg","SubTitle"), ButtonsCodesignments/Que05ColorPicker.dart", "Color Picker"),
                  ButtonsCode(
                      Que06Random(),
                      "lib/Assignments/Que06Random.dart",
                      "Generate Random Color Background",
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
