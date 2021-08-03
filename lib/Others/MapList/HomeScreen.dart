// lib/Opacity\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que06Popup.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que10AppBarSample.dart';

import 'package:flutter_tutorial/Box/CheckBox/Que01.dart';
import 'package:flutter_tutorial/Buttons/ElevatedButton/Que05DynamicButtons.dart';
import 'package:flutter_tutorial/Card/Que02DynamicCard.dart';
import 'package:flutter_tutorial/Buttons/RadioButton/Que02.dart';
import 'package:flutter_tutorial/Chip/Que01DynamicChip.dart';
import 'package:flutter_tutorial/Dropdown/Que02.dart';
import 'package:flutter_tutorial/Dropdown/Que03.dart';
import 'package:flutter_tutorial/Dropdown/Que05.dart';
import 'package:flutter_tutorial/Dropdown/Que08.dart';
import 'package:flutter_tutorial/Dropdown/Que09.dart';
import 'package:flutter_tutorial/Dropdown/Que10.dart';
import 'package:flutter_tutorial/Dropdown/Que11.dart';
import 'package:flutter_tutorial/Dropdown/Que14.dart';
import 'package:flutter_tutorial/Dropdown/Que15.dart';
import 'package:flutter_tutorial/Dropdown/Que16.dart';
import 'package:flutter_tutorial/Dropdown/Que17.dart';
import 'package:flutter_tutorial/ListView/Que17.dart';
import 'package:flutter_tutorial/ListView/Que20ListTileDivideTiles.dart';
import 'package:flutter_tutorial/ListView/Que44a.dart';
import 'package:flutter_tutorial/ListView/Que50Search.dart';
import 'package:flutter_tutorial/ListView/Que90Assignment.dart';
import 'package:flutter_tutorial/Others/Wrap/Que01WrapList.dart';
import 'package:flutter_tutorial/Row/Que16.dart';
import 'package:flutter_tutorial/Tab/Que08List.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeMapList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar(".map  ..toList()")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que06Popup11(),
                  "lib/Bar/AppBar/Que06Popup.dart",
                  "3 Dot Popup Menu(List)",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que10AppBarSample(),
                  "lib/Bar/AppBar/Que10AppBarSample.dart",
                  "",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(Que01(), "lib/Box/ChekBox/Que01.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(
                  Que05(),
                  "lib/Buttons/ElevatedButton/Que05DynamicButtons.dart",
                  "",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(Que02(), "lib/Buttons/RadioButton/Que02.dart",
                  "Radio Buttons", "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(
                  Que02Card(),
                  "lib/Card/Que02DynamicCard.dart",
                  "Generate Card using \nList<String>",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que01Chip(),
                  "lib/Chip/Que01DynamicChip.dart",
                  "Generate chip using \nList<String>",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(DropDownDemo(), "lib/Dropdown/Que02.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que03(), "lib/Dropdown/Que03.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que05DropDown(), "lib/Dropdown/Que05.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que08(), "lib/Dropdown/Que08.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que09(), "lib/Dropdown/Que09.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que10(), "lib/Dropdown/Que10.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que11(), "lib/Dropdown/Que11.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que14(), "lib/Dropdown/Que14.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que15(), "lib/Dropdown/Que15.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que16(), "lib/Dropdown/Que16.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que17(), "lib/Dropdown/Que17.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(
                  Que17ExpansionTileExample(),
                  "lib/ListView/Que17.dart",
                  "",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(Que2011(), "lib/ListView/Que20ListTileDivide.dart",
                  "", "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(
                  Que44aReorderableListExample(),
                  "lib/ListView/Que44a.dart",
                  "",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(Que50Search(), "lib/ListView/Que50Search.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(MyDemo11(), "lib/ListView/Que90Assignment.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que01WrapExample(), "lib/Wrap/Que01WrapList.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(SfDataGridDemo(), "lib/Row/Que16.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que0811(), "lib/Tab/Que08List.dart", "",
                  "assets/help/Que01.jpg", "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
