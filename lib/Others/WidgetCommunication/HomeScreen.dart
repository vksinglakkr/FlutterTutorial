// lib/CustomWidgets\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/HeightChanger.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/Que02DirectlyWritingCallBack.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/Que03CallingCallback.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/Que04TextField.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/Que06Color.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/Que07Buttons.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/Que08ChangeAppBarTit.dart';
import 'package:flutter_tutorial/Others/WidgetCommunication/Que08b.dart';
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
              ButtonsCode(
                  Que02(),
                  "lib/Others/WidgetCommunication/Que02.dart",
                  "Directly writing callback i.e. Normal way",
                  "assets/help/Others/WidgetsCommunication/1 (1).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que08AppbarTitle(),
                  "lib/Others/WidgetCommunication/Que08.dart",
                  "Directly writing callback i.e. Appbar Title",
                  "assets/help/Others/WidgetsCommunication/1 (2).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que08b(),
                  "lib/Others/WidgetCommunication/Que08b.dart",
                  "Calling callback fn i.e. Appbar Title",
                  "assets/help/Others/WidgetsCommunication/1 (3).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que03(),
                  "lib/Others/WidgetCommunication/Que03.dart",
                  "Calling callback function",
                  "assets/help/Others/WidgetsCommunication/1 (4).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que01(),
                  "lib/Others/WidgetCommunication/Que01.dart",
                  "Custom Counter",
                  "assets/help/Others/WidgetsCommunication/1 (5).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Width01(),
                  "lib/Others/WidgetCommunication/WidthChanger.dart",
                  "Width Changer",
                  "assets/help/Others/WidgetsCommunication/1 (6).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Height01(),
                  "lib/Others/WidgetCommunication/HeightChanger.dart",
                  "Height Changer",
                  "assets/help/Others/WidgetsCommunication/1 (7).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que04TextField(),
                  "lib/Others/WidgetCommunication/Que04TextField.dart",
                  "TextField",
                  "assets/help/Others/WidgetsCommunication/1 (8).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que05Slider(),
                  "lib/Others/WidgetCommunication/Que05Slider.dart",
                  "Slider",
                  "assets/help/Others/WidgetsCommunication/1 (9).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que06Color(),
                  "lib/Others/WidgetCommunication/Que06Color.dart",
                  "Change Color using Button",
                  "assets/help/Others/WidgetsCommunication/1 (10).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que07Button(),
                  "lib/Others/WidgetCommunication/Que07Buttons.dart",
                  "voidCallBack Buttons",
                  "assets/help/Others/WidgetsCommunication/1 (11).jpg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
