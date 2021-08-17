// lib/Padding\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01EdgeInsetsDirectional.dart';
import 'Que06usingPadding.dart';
import 'Que07PaddingLRTB.dart';
import 'Que08PaddingOnly.dart';

class HomePadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Padding")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  MyAppEdgeInSets11(),
                  "lib/Padding/Que01EdgeInsetsDirectional.dart",
                  "EdgeInsetsDirectional",
                  "assets/help/Icon/1 (1).jpg",
                  "SubTitle"),
              ButtonsCode(Que0611(), "lib/Padding/Que06usingPadding.dart",
                  "Padding", "assets/help/Icon/1 (1).jpg", "SubTitle"),
              ButtonsCode(Que0711(), "lib/Padding/Que07PaddingLRTB.dart",
                  "PaddingLRTB", "assets/help/Icon/1 (2).jpg", "SubTitle"),
              ButtonsCode(Que0811(), "lib/Padding/Que08PaddingOnly.dart",
                  "PaddingOnly", "assets/help/Icon/1 (3).jpg", "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
