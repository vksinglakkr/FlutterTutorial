// lib\Buttons\RadioButton\HomeScreen_Floating.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01onPressed.dart';
import 'Que02CenterFloatLocation.dart';
import 'Que03Color.dart';
import 'Que04CustomShape.dart';
import 'Que05ImageinText.dart';
import 'Que06RectangleShape.dart';
import 'Que07MiniButton.dart';
import 'Que08Iconwithlabel.dart';
import 'Que09DiamondShape.dart';
import 'Que10SwitchIcon.dart';
import 'Que11RectangleShapeRoundedCorner.dart';

class HomeFloating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Floating Action Button ")),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                ButtonsCode(
                    Que01Floating11(),
                    "lib\Buttons\FloatingActionButton\Que00BasicFAB.dart",
                    "Basic Code"),
                ButtonsCode(
                    Que02Floating11(),
                    "lib\Buttons\FloatingActionButton\Que01onPressed.dart",
                    "Location"),
                ButtonsCode(
                    Que03Floating11(),
                    "lib\Buttons\FloatingActionButton\Que02CenterFloatLocation.dart",
                    "Color"),
                ButtonsCode(
                    Que04Floating11(),
                    "lib\Buttons\FloatingActionButton\Que04CustomShape.dart",
                    "Custom Shape"),
                ButtonsCode(
                    Que05Floating11(),
                    "lib\Buttons\FloatingActionButton\Que05ImageinText.dart",
                    "Display Image"),
                ButtonsCode(
                    Que06Floating11(),
                    "lib\Buttons\FloatingActionButton\Que06RectangleShape.dart",
                    "Rectangle Shape"),
                ButtonsCode(
                    Que07Floating11(),
                    "lib\Buttons\FloatingActionButton\Que04CustomShape.dart",
                    "Mini Size"),
                ButtonsCode(
                    Que08Floating11(),
                    "lib\Buttons\FloatingActionButton\Que08Iconwithlabel.dart",
                    "Icon with Label"),
                ButtonsCode(
                    Que09Floating11(),
                    "lib\Buttons\FloatingActionButton\Que09DiamondShape.dart",
                    "Diamond Shapee"),
                ButtonsCode(
                    Que10Floating11(),
                    "lib\Buttons\FloatingActionButton\Que10SwitchIcon.dart",
                    "Switch Icon"),
                ButtonsCode(
                    Que11Floating11(),
                    "lib\Buttons\FloatingActionButton\Que11RectangleShapeRoundedCorner.dart",
                    "Rectangle Shape Rounded Corner"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
