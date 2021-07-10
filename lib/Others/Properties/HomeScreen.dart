// lib/Others/Properties/Que15ShowProperties.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Properties/Que15ShowProperties.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeProperties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Properties")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que15(),
                  "lib/Others/Properties/Que15ShowProperties.dart",
                  "Properties (Row/Column)"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
