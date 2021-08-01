// lib/Stack_IndexStack_Positioned\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Positioned/Que01.dart';
import 'package:flutter_tutorial/Others/Positioned/Que02.dart';
import 'package:flutter_tutorial/Others/Positioned/Que03.dart';
import 'package:flutter_tutorial/Others/Positioned/Que04.dart';
import 'package:flutter_tutorial/Others/Positioned/Que05.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
//import 'Que01.dart';
//import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Stack")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que01Positioned11(),
                  "lib/Others/Positioned/Que01.dart", "Positioned"),
              ButtonsCode(Que02Positioned11(),
                  "lib/Others/Positioned/Que02.dart", "Positioned.directional"),
              ButtonsCode(Que03Positioned11(),
                  "lib/Others/Positioned/Que03.dart", "Positioned.fill"),
              ButtonsCode(Que04Positioned11(),
                  "lib/Others/Positioned/Que04.dart", "Positioned.fromRect"),
              ButtonsCode(
                  Que05Positioned11(),
                  "lib/Others/Positioned/Que05.dart",
                  "Positioned.fromRelativeRect"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}

// class Que01 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return WidgetWithCodeView(
//       child: Que0111(),
//       sourceFilePath: 'lib/Slider/Que01.dart',
//       codeLinkPrefix:
//           'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Slider/Que01.dart',
//     );
//   }
// }