// lib/Box\HomeScreen_FractionallySized.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01.dart';

class HomeFractionallySized extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("FractionallySized ..")),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                ButtonsCode(
                    Que01Fraction11(),
                    "lib/Box/Box_FractionallySizedBox/Que01.dart",
                    "All Properties"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
