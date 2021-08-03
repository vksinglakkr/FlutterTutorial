// lib/Bar\HomeScreen_Bottom.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

import 'Que01BottomNavigationbar.dart';
import 'Que02CurvedBottomNavigationbar.dart';
import 'Que03CustomShaped.dart';
//import 'package:widget_with_codeview/widget_with_codeview.dart';

//import 'BottomNavigationBar/';

class HomeBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Bottom \nNavigation Bar")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que01Bottom11(),
                      "lib/Bar/BottomNavigationBar/Que01BottomNavigationbar.dart",
                      "Bottom Navigation Bar",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que02Curved11(),
                      "lib/Bar/BottomNavigationBar/Que02CurvedBottomNavigationbar.dart",
                      "Curved Navigation Bar",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03Custom(),
                      "lib/Bar/BottomNavigationBar/Que03CustomShaped.dart",
                      "Custom Shaped Navigation Bar",
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
