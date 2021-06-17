// libVisibilityHomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

import 'Que01CustomContainer_Visibility.dart';

class HomeVisibility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Visibility")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que0111(),
                      "libVisibilityQue01CustomContainer_Visibility.dart",
                      "How to set Visibility with Space Management."),
                  ButtonsCode(
                      Que0111(),
                      "libVisibilityQue01CustomContainer_Visibility.dart",
                      "How to set Visibility of a Widget with Widget Visibility. But by this method we can not set visibility of Item of Bottom Navigationbar. for this we have to use if statement"),
                  ButtonsCode(
                      Que0111(),
                      "libVisibilityQue01CustomContainer_Visibility.dart",
                      "How to set Visibility of a Widget with if statement"),
                  ButtonsCode(
                      Que0111(),
                      "libVisibilityQue01CustomContainer_Visibility.dart",
                      "How to toggle/visibility of properties of a widget e.g. Textdata, Buttons,Icon,Color etc."),
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
