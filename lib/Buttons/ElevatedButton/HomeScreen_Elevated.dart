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
                      Que01Elevated11(),
                      "lib/Buttons/ElevatedButton/Que01BasicProperties.dart",
                      "Basic Properties?",
                      "assets/help/Buttons/ElevatedButton/1.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que02(),
                      "lib/Buttons/ElevatedButton/Que02.dart",
                      "Increment Counter",
                      "assets/help/Buttons/ElevatedButton/2.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que10Elevated11(),
                      "lib/Buttons/ElevatedButton/Que10makeCircularButton.dart",
                      "How to make Circular Button?",
                      "assets/help/Buttons/ElevatedButton/3.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que06Elevated11(),
                      "lib/Buttons/ElevatedButton/Que06ElevatedButtonTheme.dart",
                      "set properties using Theme",
                      "assets/help/Buttons/ElevatedButton/4.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03Elevated11(),
                      "lib/Buttons/ElevatedButton/Que03onPressed.dart",
                      "onPressed - call fn (Increment Counter)",
                      "assets/help/Buttons/ElevatedButton/5.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que02Elevated11(),
                      "lib/Buttons/ElevatedButton/Que02onPressed.dart",
                      "onPressed - launch url",
                      "assets/help/Buttons/ElevatedButton/6.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que04Elevated11(),
                      "lib/Buttons/ElevatedButton/Que04LongPress.dart",
                      "Elevated - LongPress",
                      "assets/help/Buttons/ElevatedButton/7.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que13TextFormatting(),
                      "lib/Buttons/ElevatedButton/Que13setStateThreeWays.dart",
                      "setState in 3 Ways",
                      "assets/help/Buttons/ElevatedButton/8.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que07Custom11(),
                      "lib/Buttons/ElevatedButton/Que07CustomButton.dart",
                      "Elevated Button using Extract Widget",
                      "assets/help/Buttons/ElevatedButton/9.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que08Rounded11(),
                      "lib/Buttons/ElevatedButton/Que08RoundedButton.dart",
                      "Different approaches to make rounded buttons",
                      "assets/help/Buttons/ElevatedButton/10.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que05(),
                      "lib/Buttons/ElevatedButton/Que05DynamicButtons.dart",
                      "Generate Buttons using List<String>",
                      "assets/help/Buttons/ElevatedButton/11.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que04Assignment(),
                      "lib/TextField/Assignment4.dart",
                      "onSubmitted,onTap,OnEditingComplete",
                      "assets/help/Buttons/ElevatedButton/12.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que05Assignment(),
                      "lib/TextField/Assignment5.dart",
                      "retrival of value using onChanged",
                      "assets/help/Buttons/ElevatedButton/13.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que06Assignment(),
                      "lib/TextField/Assignment6.dart",
                      "retrival of value using Controller/ElevatedButton(onPress..)",
                      "assets/help/Buttons/ElevatedButton/14.jpeg",
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
