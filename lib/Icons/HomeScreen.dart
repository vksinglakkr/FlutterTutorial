// lib\Icons\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01ChangeIcon.dart';
import 'Que02ChangeColor.dart';

class HomeIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Icons")),
      body: SafeArea(
          child: Container(
              child: Builder(
        builder: (context) => ListView(
          padding: EdgeInsets.all(3.0),
          children: [
            ButtonsCode(Que0111(), "lib\Icons\Que01ChangeIcon.dart", "Padding"),
            ButtonsCode(
                Que0211(), "lib\Icons\Que02ChangeColor.dart", "PaddingLRTB"),
          ],
        ),
      ))),
      floatingActionButton: WidgetFab(),
    );
  }
}
