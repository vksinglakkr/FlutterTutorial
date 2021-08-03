// lib/Theme\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Divider/Que01DividerTheme2.dart';
import 'package:flutter_tutorial/Others/Theme/QueSystemTheme.dart';
import 'package:flutter_tutorial/Others/Theme/SplashScreenTheme.dart';
import 'package:flutter_tutorial/Others/Theme/mainTheme.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01.dart';
import 'Que02.dart';

class HomeTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Theme")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que01Theme11(),
                  "lib/Other/Theme/Que01.dart",
                  "Difference between Theme & ThemeWidget",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que0111(),
                  "lib/Divider/Que01DividerTheme2.dart",
                  "Divider using ThemeData",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(QueSystemTheme(), "lib/Other/Theme/QueHomePage.dart",
                  "theme as per system", "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que02(), "lib/Other/Theme/Que02.dart", "Custom Theme",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(
                  MainTheme(),
                  "lib/Other/Theme/mainTheme.dart",
                  "Dynamic NonPersistent Theme Changer",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  SplashPersistent(),
                  "lib/Other/Theme/SplashScreenTheme.dart",
                  "Dynamic Persistent Theme Switcher using theme Provider",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
