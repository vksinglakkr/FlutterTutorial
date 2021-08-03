// lib/GesterDetector\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Container/Que31ContainerButton.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01ClickonText.dart';
import 'Que02ClickonTextToggle.dart';
import 'Que03ContainerOpacityGesterDetector.dart';

class HomeGesterDetector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("GesterDetector")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que01Gester11(),
                  "lib/Others/GesterDetector/Que01ClickonText.dart",
                  "Clickable Text",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que02Gester11(),
                  "lib/Others/GesterDetector/Que02ClickonTextToggle.dart",
                  "Toggle action on Text",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que03Gester11(),
                  "lib/Others/GesterDetector/Que03ContainerOpacityGesterDetector.dart",
                  "on Click Change Opacity of Container",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que31Container(),
                  "lib/Container/Que31ContainerButton.dart",
                  "Clickable Button-Container,Gesterdetector,snackbar",
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
