// lib/Others/Properties/Que15ShowProperties.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Box/Box_FittedBox/Que05a.dart';
import 'package:flutter_tutorial/Dropdown/Que04.dart';
import 'package:flutter_tutorial/ListView/Que03properties.dart';
import 'package:flutter_tutorial/Others/Properties/Que15ShowProperties.dart';
import 'package:flutter_tutorial/Others/Wrap/Que02.dart';
import 'package:flutter_tutorial/Row/Que01Basic.dart';
import 'package:flutter_tutorial/Row/Que13.dart';
import 'package:flutter_tutorial/Row/Que14.dart';
import 'package:flutter_tutorial/Tab/Que05.dart';
import 'package:flutter_tutorial/Text/Que01strutStyle.dart';
import 'package:flutter_tutorial/Text/Que02textColor.dart';
import 'package:flutter_tutorial/Text/Que06.dart';
import 'package:flutter_tutorial/Tab/Que06.dart';
import 'package:flutter_tutorial/Text/Que23Alignment.dart';
import 'package:flutter_tutorial/Text/Que23Color.dart';
import 'package:flutter_tutorial/Text/Que23Font.dart';
import 'package:flutter_tutorial/Text/Que23Spacing.dart';
import 'package:flutter_tutorial/Text/Que23TextDirection.dart';
import 'package:flutter_tutorial/Text/Que23strutStyle.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeProperties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Properties\nCollection")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que15(),
                  "lib/Others/Properties/Que15ShowProperties.dart",
                  "Properties Collection"),
              ButtonsCode(Que23Alignment(), "lib/Text/Que23Alignment.dart",
                  "Alignment"),
              ButtonsCode(
                  Que23TextDirection(),
                  "lib/Text/Que23TextDirection.dart",
                  "textDirection, textAlign"),
              ButtonsCode(Que23Color(), "lib/Text/Que23Color.dart",
                  "color, backGroundColor"),
              ButtonsCode(Que02Text11(), "lib/Text/Que02textColor.dart",
                  "How to change the Color of Text?"),
              ButtonsCode(Que23Font(), "lib/Text/Que23Font.dart",
                  "fontWeight, fontSize, fontStyle"),
              ButtonsCode(
                  Que23Strut(), "lib/Text/Que23Font.dart", "strutStyle: "),
              ButtonsCode(Que01strut(), "lib/Text/Que01strutStyle.dart",
                  "strutStyle:, forceStrutHeight:"),
              ButtonsCode(Que23Spacing(), "lib/Text/Que23Spacing.dart",
                  "lineSpacing, wordSpacing, height"),
              ButtonsCode(
                  Que05a(), "lib/Box/Box_FittedBox/Que05a.dart", "FittedBox"),
              ButtonsCode(Que04(), "lib/Dropdown/Que04.dart", "DropDown"),
              ButtonsCode(Que02(), "lib/Others/Wrap/Que02.dart", "Wrap"),
              ButtonsCode(Que01Basic(), "lib/Row/Que01Basic.dart", "Row Ex.1"),
              ButtonsCode(Que13(), "lib/Row/Que13.dart", "Row Ex.2"),
              ButtonsCode(Que14(), "lib/Row/Que14.dart",
                  "Row, enum(mainAxisAlignment)"),
              ButtonsCode(Que04(), "lib/Tab/Que04.dart", "Tab Ex.1"),
              ButtonsCode(Que05(), "lib/Tab/Que05.dart", "Tab Ex.2"),
              ButtonsCode(Que06(), "lib/Tab/Que06.dart", "Tab Ex.3"),
              ButtonsCode(Que03(), "lib/ListView/Que03properties.dart",
                  "ListView, Boolean(reverse:), Slider(itemExtent:)"),
              ButtonsCode(Que06soft(), "lib/Text/Que06.dart", "Text softWrap"),
              Text(
                  "Best Video for all https://www.youtube.com/watch?v=Kq5ZsygfWAc")
            ],
          ),
        ))),
      ),
    );
  }
}
