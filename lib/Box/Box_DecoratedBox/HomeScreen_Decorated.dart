// lib/Box\HomeScreen_Decorated.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01Box_DecoratedBox.dart';

class HomeDecorated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Decorated Box")),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                ButtonsCode(
                    Que01Decorated11(),
                    "lib/Box/Box_DecoratedBox/Que01Box_DecoratedBox.dart",
                    "Decorated Box"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
