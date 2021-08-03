//  \lib/Others/Future/HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Future/Que01.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeFuture extends StatelessWidget {
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
              ButtonsCode(
                  Que01Future(),
                  "lib/Others/Future/Que01.dart",
                  "Demonstrate FutureBuilder",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
