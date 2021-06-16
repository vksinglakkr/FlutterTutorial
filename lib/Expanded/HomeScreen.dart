//  \lib\Divider\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Expanded/QueExpanded.dart';
import 'package:flutter_tutorial/Expanded/QueSizedExpanded.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Expanded")),
      body: SafeArea(
          child: Container(
              child: Builder(
        builder: (context) => ListView(
          padding: EdgeInsets.all(3.0),
          children: [
            ButtonsCode(
                QueExpanded11(), "lib\Expanded\QueExpanded.dart", "Expanded"),
            ButtonsCode(
                QueSizedExpanded11(),
                "lib\Expanded\QueSizedExpanded.dart",
                "SizedBox and Expanded, How and where to use them?"),
          ],
        ),
      ))),
      floatingActionButton: WidgetFab(),
    );
  }
}
