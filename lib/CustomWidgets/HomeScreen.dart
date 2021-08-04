// lib/CustomWidgets\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/CustomWidgets/Que02PassChild.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01CustomContainer_Visibility.dart';

class HomeCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("CustomWidgets")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que0111(),
                  "lib/CustomWidgets/Que01CustomContainer_Visibility.dart",
                  "Custom Container",
                  "assets/help/Others/CustomWidgets/1 (1).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que02(),
                  "lib/CustomWidgets/Que02PassChild.dart",
                  "Passing .... Widget (as child) as Parameter",
                  "assets/help/Others/CustomWidgets/1 (2).jpg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
