// lib/Opacity\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

import 'Que01.dart';
import 'Que02.dart';
import 'Que03.dart';
import 'Que04.dart';

class HomeOpacity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("OOPs")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que0111(), "lib/OOPs/Que01.dart", "runApp?",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que0211(), "lib/OOPs/Que02.dart", "Inheritance?",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que0311(), "lib/OOPs/Que03.dart", "abstract?",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que0411(), "lib/OOPs/Que04.dart", "constructor?",
                  "assets/help/Que01.jpg", "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
