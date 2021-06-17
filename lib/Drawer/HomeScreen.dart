// lib/Drawer\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Drawer/Que02AppbarWithDrawerActionButton.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01Drawer1.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Drawer")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que0111(), "lib/Drawer/Que01Drawer1.dart", "Basic Drawer"),
              ButtonsCode(
                  Que0211(),
                  "lib/Drawer/Que02AppbarWithDrawerActionButton.dart",
                  "Drawer in ActionBar & AppBar"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
