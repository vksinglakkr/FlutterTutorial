// lib/Switch\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Switch/Que10.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01Switch.dart';
import 'Que02SwitchOn_OffLight_Bulb.dart';
import 'Que03SwitchActiveTrackColor.dart';
import 'Que04SwitchListTile_BulbOnOff.dart';
import 'Que05SwitchActiveThumbPage.dart';
import 'Que06Switch.dart';
import 'Que07Switch.dart';
import 'Que08Switch.dart';
import 'Que09Switch.dart';

class HomeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Switch")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(Que0111(), "lib/Switch/Que01Switch.dart", "Basic",
                      "assets/help/Switch/1.jpeg", "SubTitle"),
                  ButtonsCode(
                      Que10(),
                      "lib/Switch/Que10.dart",
                      "disabled switch",
                      "assets/help/Switch/2.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0211(),
                      "lib/Switch/Que02SwitchOn_OffLight_Bulb.dart",
                      "How to change the Color of Icon at run time",
                      "assets/help/Switch/3.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0311(),
                      "lib/Switch/Que03SwitchActiveTrackColor.dart",
                      "Active Track Color",
                      "assets/help/Switch/4.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0411(),
                      "lib/Switch/Que04SwitchListTile_BulbOnOff.dart",
                      "List Tile (Bulb On/Off)",
                      "assets/help/Switch/5.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0511(),
                      "lib/Switch/Que05SwitchActiveThumbPage.dart",
                      "Active ThumbPage",
                      "assets/help/Switch/6.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0611(),
                      "lib/Switch/Que06Switch.dart",
                      "How we can increase the width of the Switch",
                      "assets/help/Switch/7.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0711(),
                      "lib/Switch/Que07Switch.dart",
                      "How we can increase the width & height of Switch",
                      "assets/help/Switch/8.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0811(),
                      "lib/Switch/Que08Switch.dart",
                      "Diff. between Switch & Switch.adaptive",
                      "assets/help/Switch/9.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0911(),
                      "lib/Switch/Que09Switch.dart",
                      "Difference between Android & iOS Switch",
                      "assets/help/Switch/10.jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0111(),
                      "",
                      "Difference between Android & iOS Switch",
                      "assets/help/Switch/11.jpeg",
                      "SubTitle"),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
