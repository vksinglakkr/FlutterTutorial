// lib\Theme\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01.dart';

class HomeTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Theme")),
      body: SafeArea(
          child: Container(
              child: Builder(
        builder: (context) => ListView(
          padding: EdgeInsets.all(3.0),
          children: [
            ButtonsCode(Que0111(), "lib\Theme\Que01.dart",
                "Difference between Theme & ThemeWidget"),
          ],
        ),
      ))),
      floatingActionButton: WidgetFab(),
    );
  }
}
