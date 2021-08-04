// lib/Others/Properties/Que15ShowProperties.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Align/Que01heightFactorwidthfactor.dart';
import 'package:flutter_tutorial/Align/Que03Properties.dart';
import 'package:flutter_tutorial/Bar/BottomNavigationBar/Que03CustomShaped.dart';
import 'package:flutter_tutorial/Box/Box_SizedBox/Que08.dart';
import 'package:flutter_tutorial/Box/Box_SizedBox/Que12Limited.dart';
import 'package:flutter_tutorial/GridView/Que01GridView_Material_ClipRRect.dart';
import 'package:flutter_tutorial/Others/Assignments/Que02GridView_ClipRRect_Material.dart';
import 'package:flutter_tutorial/Others/Center/Que01.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeHeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("heightFactor: widthFactor:")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que01Align11(),
                  "lib/Align/Que01heightFactorwidthfactor.dart",
                  "Align(heightFactor:, widthFactor:)",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que03(),
                  "lib/Align/Que01heightFactorwidthfactor.dart",
                  "Align(heightFactor:, widthFactor:)",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que0111(),
                  "lib/GridView/Que01GridView_Material_ClipRRect.dart",
                  "Align(heightFactor:, widthFactor:)",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  QueHeightWidth(),
                  "lib/Others/Center/Que01.dart",
                  "Center(heightFactor:, widthFactor:)",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que0211(),
                  "lib/Others/Assignments/Que02GridView_ClipRRect_Material.dart",
                  "Align(heightFactor:, widthFactor:)",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que12(),
                  "lib/Box/Box_SizedBox/Que12Limited.dart",
                  "FractionallySizedBox(heightFactor: widthFactor:)",
                  "assets/help/Box/Box_SizedBox/1 (8).jpeg",
                  "SubTitle"),
              ButtonsCode(
                  Que08(),
                  "lib/Box/Box_SizedBox/Que08.dart",
                  "FractionallySizedBox(heightFactor: widthFactor:)",
                  "assets/help/Box/Box_SizedBox/1 (6).jpeg",
                  "SubTitle"),
              ButtonsCode(
                  Que03Custom(),
                  "lib/Bar/BottomNavigationBar/Que03CustomShaped.dart",
                  "Center(heightFactor:, widthFactor:)",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
            ],
          ),
        ))),
      ),
    );
  }
}
