//  \lib/ListView\HomeScreen_ListView1.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Dropdown/Que01basic.dart';
import 'package:flutter_tutorial/Dropdown/Que02.dart';
import 'package:flutter_tutorial/Dropdown/Que03.dart';
import 'package:flutter_tutorial/Dropdown/Que04.dart';
import 'package:flutter_tutorial/Dropdown/Que05.dart';
import 'package:flutter_tutorial/Dropdown/Que06.dart';
import 'package:flutter_tutorial/Dropdown/Que07.dart';
import 'package:flutter_tutorial/Dropdown/Que08.dart';
import 'package:flutter_tutorial/Dropdown/Que09.dart';
import 'package:flutter_tutorial/Dropdown/Que10.dart';
import 'package:flutter_tutorial/Dropdown/Que11.dart';
import 'package:flutter_tutorial/Dropdown/Que12.dart';
import 'package:flutter_tutorial/Dropdown/Que13.dart';
import 'package:flutter_tutorial/Dropdown/Que14.dart';
import 'package:flutter_tutorial/Dropdown/Que15.dart';
import 'package:flutter_tutorial/Dropdown/Que16.dart';
import 'package:flutter_tutorial/Dropdown/Que17.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Dropdown")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que12(),
                      "lib/Dropdown/Que12.dart",
                      "Dropdown will have same text and value. We will add each dropdown item ourself",
                      "assets/help/Buttons/DropDownButton/1.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que13(),
                      "lib/Dropdown/Que13.dart",
                      "Dropdown will have different text and value. We will add each dropdown item ourself",
                      "assets/help/Buttons/DropDownButton/2.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que14(),
                      "lib/Dropdown/Que14.dart",
                      "We will add dropdown item list using iterator from list",
                      "assets/help/Buttons/DropDownButton/3.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que15(),
                      "lib/Dropdown/Que15.dart",
                      "We will load data from Server and make a dropdown",
                      "assets/help/Buttons/DropDownButton/4.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que06(),
                      "lib/Dropdown/Que06.dart",
                      "Items declared in DropdownMenuItem",
                      "assets/help/Buttons/DropDownButton/5.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03(),
                      "lib/Dropdown/Que03.dart",
                      "List<String> / map",
                      "assets/help/Buttons/DropDownButton/6.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que05DropDown(),
                      "lib/Dropdown/Que05.dart",
                      "List<String> / map",
                      "assets/help/Buttons/DropDownButton/7.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que08(),
                      "lib/Dropdown/Que08.dart",
                      "List<String> / map",
                      "assets/help/Buttons/DropDownButton/8.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que09(),
                      "lib/Dropdown/Que09.dart",
                      "List<String> / map",
                      "assets/help/Buttons/DropDownButton/9.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      DropDownDemo(),
                      "lib/Dropdown/Que02.dart",
                      "Map<String, Duration>",
                      "assets/help/Buttons/DropDownButton/10.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que04(),
                      "lib/Dropdown/Que04.dart",
                      "2 Seperate List (Color)",
                      "assets/help/Buttons/DropDownButton/11.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      DropdownScreen(),
                      "lib/Dropdown/Que01basic.dart",
                      "models",
                      "assets/help/Buttons/DropDownButton/12.jpeg",
                      "SubTitle"),
                  ButtonsCode(Que07(), "lib/Dropdown/Que07.dart", "models",
                      "assets/help/Buttons/DropDownButton/13.png", "SubTitle"),
                  ButtonsCode(
                      Que10(),
                      "lib/Dropdown/Que10.dart",
                      "models male female",
                      "assets/help/Buttons/DropDownButton/14.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que11(),
                      "lib/Dropdown/Que11.dart",
                      "models multiLevel",
                      "assets/help/Buttons/DropDownButton/15.jpeg",
                      "SubTitle"),
                  ButtonsCode(Que16(), "lib/Dropdown/Que16.dart", "multiLevel",
                      "assets/help/Buttons/DropDownButton/16.jpeg", "SubTitle"),
                  ButtonsCode(
                      Que17(),
                      "lib/Dropdown/Que17.dart",
                      "models multiLevel",
                      "assets/help/Buttons/DropDownButton/17.jpeg",
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
