// lib/Buttons\RadioButton\HomeScreen_Floating.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Container/Que34AnimatedFlight.dart';
import 'package:flutter_tutorial/Container/Que35AnimatedGraph.dart';
import 'package:flutter_tutorial/Container/Que36Gradient.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Floating Action Button ")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que01Floating11(),
                      "lib/Buttons/FloatingActionButton/Que00BasicFAB.dart",
                      "Basic Code",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que02Floating11(),
                      "lib/Buttons/FloatingActionButton/Que02CenterFloatLocation.dart",
                      "Location",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que07Floating11(),
                      "lib/Buttons/FloatingActionButton/Que07MiniButton.dart",
                      "Mini Size",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03Floating11(),
                      "lib/Buttons/FloatingActionButton/Que03Color.dart",
                      "Color",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que05Floating11(),
                      "lib/Buttons/FloatingActionButton/Que05ImageinText.dart",
                      "Display Image",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que10Floating11(),
                      "lib/Buttons/FloatingActionButton/Que10SwitchIcon.dart",
                      "Switch Icon",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que06Floating11(),
                      "lib/Buttons/FloatingActionButton/Que06RectangleShape.dart",
                      "Rectangle Shape",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que11Floating11(),
                      "lib/Buttons/FloatingActionButton/Que11RectangleShapeRoundedCorner.dart",
                      "Rectangle Shape Rounded Corner",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que08Floating11(),
                      "lib/Buttons/FloatingActionButton/Que08Iconwithlabel.dart",
                      "Icon with Label",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que09Floating11(),
                      "lib/Buttons/FloatingActionButton/Que09DiamondShape.dart",
                      "Diamond Shape",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que04Floating11(),
                      "lib/Buttons/FloatingActionButton/Que04CustomShape.dart",
                      "Custom Shape",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      FlightExample(),
                      "lib/Container/Que34AnimatedFlight.dart",
                      "Animated Flight",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      GraphExample(),
                      "lib/Container/Que35AnimatedGraph.dart",
                      "Animated Graph",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que36GradientTransform(),
                      "lib/Container/Que36Gradient.dart",
                      "Animated Gradient",
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
