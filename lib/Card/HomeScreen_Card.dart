// lib/Card\HomeScreen_Card.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Box/CheckBox/Que01.dart';
import 'package:flutter_tutorial/Card/Que02DynamicCard.dart';
import 'package:flutter_tutorial/Card/Que03.dart';
import 'package:flutter_tutorial/Card/Que04Theme.dart';
import 'package:flutter_tutorial/Card/Que05.dart';
import 'package:flutter_tutorial/Card/Que06Border.dart';
import 'package:flutter_tutorial/Card/Que07.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01CardContainer.dart';

class HomeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Card")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(Que01Card11(), "lib/Card/Que01CardContainer.dart",
                      "Simple Card'"),
                  ButtonsCode(Que05(), "lib/Card/Que05.dart", "Card"),
                  ButtonsCode(Que06(), "lib/Card/Que06.dart", "Border.only"),
                  ButtonsCode(
                      Que07(), "lib/Card/Que07.dart", "child: SizedBox()"),
                  ButtonsCode(Que02(), "lib/Card/Que02DynamicCard.dart",
                      "Generate Card using List<String>"),
                  ButtonsCode(
                      Que03(), "lib/Card/Que03.dart", "Different Shapes"),
                  ButtonsCode(Que04(), "lib/Card/Que04Theme.dart", "Theme"),
                  ButtonsCode(
                      Que01(), "lib/Box/Box_CheckBox/Que01.dart", "CheckBox"),
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

// class Que01Card extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return WidgetWithCodeView(
//       child: Que01Card11(),
//       sourceFilePath: 'lib/Card/Que01CardContainer.dart',
//       codeLinkPrefix:
//           'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Card/Que01CardContainer.dart',
//     );
//   }
// }
