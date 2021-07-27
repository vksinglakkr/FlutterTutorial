// lib/CustomWidgets\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/HeightChanger.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/Que02DirectlyWritingCallBack.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/Que03CallingCallback.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/Que04TextField.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/Que06Color.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/Que07Buttons.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/WidthChanger.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/que05Slider.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01.dart';

class HomeWidgetCommunication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Widgets Communication")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que02(), "lib/Others/WidgetCommunication/Que02.dart",
                  "Directly writing callback i.e. Normal way"),
              ButtonsCode(Que03(), "lib/Others/WidgetCommunication/Que03.dart",
                  "Calling callback function"),
              ButtonsCode(Que01(), "lib/Others/WidgetCommunication/Que01.dart",
                  "Custom Counter"),
              ButtonsCode(
                  Width01(),
                  "lib/Others/WidgetCommunication/WidthChanger.dart",
                  "Width Changer"),
              ButtonsCode(
                  Height01(),
                  "lib/Others/WidgetCommunication/HeightChanger.dart",
                  "Height Changer"),
              ButtonsCode(
                  Que04TextField(),
                  "lib/Others/WidgetCommunication/Que04TextField.dart",
                  "TextField"),
              ButtonsCode(Que05Slider(),
                  "lib/Others/WidgetCommunication/Que05Slider.dart", "Slider"),
              ButtonsCode(
                  Que06Color(),
                  "lib/Others/WidgetCommunication/Que06Color.dart",
                  "Change Color using Button"),
              ButtonsCode(
                  Que07Button(),
                  "lib/Others/WidgetCommunication/Que07Buttons.dart",
                  "voidCallBack Buttons"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
