// lib/Drawer\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Drawer/Que02.dart';
import 'package:flutter_tutorial/Drawer/Que02AppbarWithDrawerActionButton.dart';
import 'package:flutter_tutorial/Drawer/Que02a.dart';
import 'package:flutter_tutorial/Drawer/Que03.dart';
import 'package:flutter_tutorial/Drawer/Que04.dart';
import 'package:flutter_tutorial/Drawer/Que05.dart';
import 'package:flutter_tutorial/Drawer/Que07.dart';
import 'package:flutter_tutorial/Drawer/Que08.dart';
import 'package:flutter_tutorial/Drawer/Que09.dart';
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
              ButtonsCode(Que05(), "lib/Drawer/Que05.dart", "Design Diagram",
                  "assets/help/Drawer/1 (1).jpg", "SubTitle"),
              ButtonsCode(Que0111(), "lib/Drawer/Que01Drawer1.dart",
                  "Basic Drawer", "assets/help/Drawer/1 (2).jpg", "SubTitle"),
              ButtonsCode(Que02(), "lib/Drawer/Que02.dart", "DrawerHeader Ex.1",
                  "assets/help/Drawer/1 (3).jpg", "SubTitle"),
              ButtonsCode(
                  Que02a(),
                  "lib/Drawer/Que02a.dart",
                  "DrawerHeader Ex.2",
                  "assets/help/Drawer/1 (4).jpg",
                  "SubTitle"),
              ButtonsCode(Que03(), "lib/Drawer/Que03.dart", "List View",
                  "assets/help/Drawer/1 (5).jpg", "SubTitle"),
              ButtonsCode(Que04(), "lib/Drawer/Que04.dart", "List View",
                  "assets/help/Drawer/1 (6).jpg", "SubTitle"),
              ButtonsCode(Que04(), "lib/Drawer/Que04.dart", "List View",
                  "assets/help/Drawer/1 (7).jpg", "SubTitle"),
              ButtonsCode(Que07(), "lib/Drawer/Que07.dart", "List View",
                  "assets/help/Drawer/1 (8).jpg", "SubTitle"),
              ButtonsCode(Que08(), "lib/Drawer/Que08.dart", "List View",
                  "assets/help/Drawer/1 (9).jpg", "SubTitle"),
              ButtonsCode(Que09(), "lib/Drawer/Que09.dart", "List View",
                  "assets/help/Drawer/1 (10).jpg", "SubTitle"),
              ButtonsCode(
                  Que0211(),
                  "lib/Drawer/Que02AppbarWithDrawerActionButton.dart",
                  "Drawer in ActionBar & AppBar",
                  "assets/help/Drawer/1 (11).jpg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
