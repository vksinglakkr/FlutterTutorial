//  \lib/Divider\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Expanded/QueExpanded.dart';
import 'package:flutter_tutorial/Expanded/QueSizedExpanded.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Expanded")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(QueExpanded11(), "lib/Expanded/QueExpanded.dart",
                  "Expanded", "assets/help/Expanded/1 (1).jpg", "SubTitle"),
              ButtonsCode(
                  QueSizedExpanded11(),
                  "lib/Expanded/QueSizedExpanded.dart",
                  "SizedBox and Expanded, How and where to use them?",
                  "assets/help/Expanded/1 (2).jpg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
