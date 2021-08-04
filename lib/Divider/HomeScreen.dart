//  \lib/Divider\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Divider/Que02.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01DividerTheme2.dart';

class HomeDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Divider")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que0211(), "lib/Divider/Que02.dart", "Divider",
                  "assets/help/Divider/1 (1).jpg", "SubTitle"),
              ButtonsCode(
                  Que0111(),
                  "lib/Divider/Que01DividerTheme2.dart",
                  "Divider using ThemeData",
                  "assets/help/Divider/1 (2).jpg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
