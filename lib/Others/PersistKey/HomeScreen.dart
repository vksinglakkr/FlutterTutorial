// lib/Placeholder\HomeScreen.dartlib\Placeholder\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/PersistKey/Que01.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomePersist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("PersistKey")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que01Persist(), "lib/Others/PersistKey/Que01.dart",
                  "Persist Key", "assets/help/Que01.jpg", "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
