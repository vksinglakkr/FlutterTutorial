// lib/Card\HomeScreen_Card.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Card/Que02DynamicCard.dart';
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
                  ButtonsCode(Que02(), "lib/Card/Que02DynamicCard.dart",
                      "Generate Card using List<String>"),
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
