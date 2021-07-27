//  lib/Buttons\RadioButton\HomeScreen_Elevated.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/Que01BasicProperties.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/Que02.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/Que02onPressedlaunchURL.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/Que05DynamicButtons.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/Que06ElevatedButtonTheme.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/Que07CustomButton.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/Que08RoundedButton.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/Que10makeCircularButton.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/Que13setStateThreeWays.dart';
import 'package:flutter_tutorial/TextField/Assignment4.dart';
import 'package:flutter_tutorial/TextField/Assignment5.dart';
import 'package:flutter_tutorial/TextField/Assignment6.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que03onPressed.dart';
import 'Que04LongPress.dart';

class HomeElevated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Elevated Button")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que09Elevated11(),
                      "lib/Buttons/ElevatedButton/Que01BasicProperties.dart",
                      "Basic Properties?"),
                  ButtonsCode(Que02(), "lib/Buttons/ElevatedButton/Que02.dart",
                      "Increment Counter"),
                  ButtonsCode(
                      Que10Elevated11(),
                      "lib/Buttons/ElevatedButton/Que10makeCircularButton.dart",
                      "How to make Circular Button?"),
                  ButtonsCode(
                      Que06Elevated11(),
                      "lib/Buttons/ElevatedButton/Que06ElevatedButtonTheme.dart",
                      "set properties using Theme"),
                  ButtonsCode(
                      Que03Elevated11(),
                      "lib/Buttons/ElevatedButton/Que03onPressed.dart",
                      "onPressed - call fn (Increment Counter)"),
                  ButtonsCode(
                      Que02Elevated11(),
                      "lib/Buttons/ElevatedButton/Que02onPressed.dart",
                      "onPressed - launch url"),
                  ButtonsCode(
                      Que04Elevated11(),
                      "lib/Buttons/ElevatedButton/Que04LongPress.dart",
                      "Elevated - LongPress"),
                  ButtonsCode(
                      Que13TextFormatting(),
                      "lib/Buttons/ElevatedButton/Que13setStateThreeWays.dart",
                      "setState in 3 Ways"),
                  ButtonsCode(
                      Que07Custom11(),
                      "lib/Buttons/ElevatedButton/Que07CustomButton.dart",
                      "Elevated Button using Extract Widget"),
                  ButtonsCode(
                      Que08Rounded11(),
                      "lib/Buttons/ElevatedButton/Que08RoundedButton.dart",
                      "Different approaches to make rounded buttons"),
                  ButtonsCode(
                      Que05(),
                      "lib/Buttons/ElevatedButton/Que05DynamicButtons.dart",
                      "Generate Buttons using List<String>"),
                  ButtonsCode(
                      Que04Assignment(),
                      "lib/TextField/Assignment4.dart",
                      "onSubmitted,onTap,OnEditingComplete"),
                  ButtonsCode(
                      Que05Assignment(),
                      "lib/TextField/Assignment5.dart",
                      "retrival of value using onChanged"),
                  ButtonsCode(
                      Que06Assignment(),
                      "lib/TextField/Assignment6.dart",
                      "retrival of value using Controller/ElevatedButton(onPress..)"),
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
