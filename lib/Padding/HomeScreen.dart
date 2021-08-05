// lib/Padding\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Divider/Que02.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01EdgeInsetsDirectional.dart';
import 'Que06usingPadding.dart';
import 'Que07PaddingLRTB.dart';
import 'Que08PaddingOnly.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomePadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Padding")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que06(), "lib/Padding/Que06usingPadding.dart",
                  "Padding", "assets/help/Icon/1 (1).jpg", "SubTitle"),
              ButtonsCode(Que07(), "lib/Padding/Que07usingPadding.dart",
                  "PaddingLRTB", "assets/help/Icon/1 (2).jpg", "SubTitle"),
              ButtonsCode(Que08(), "lib/Padding/Que08usingPadding.dart",
                  "PaddingOnly", "assets/help/Icon/1 (3).jpg", "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}

class MyAppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: MyAppEdgeInSets11(),
      sourceFilePath: 'lib/Padding/Que01EdgeInsetsDirectional.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Padding/Que01EdgeInsetsDirectional.dart',
    );
  }
}

class Que06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0611(),
      sourceFilePath: 'lib/Padding/Que06usingPadding.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Padding/Que06usingPadding.dart',
    );
  }
}

class Que07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0711(),
      sourceFilePath: 'lib/Padding/Que07usingPadding.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Padding/Que07usingPadding.dart',
    );
  }
}

class Que08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0811(),
      sourceFilePath: 'lib/Padding/Que08usingPadding.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Padding/Que08usingPadding.dart',
    );
  }
}
