// lib\GesterDetector\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01ClickonText.dart';
import 'Que02ClickonTextToggle.dart';
import 'Que03ContainerOpacityGesterDetector.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeGesterDetector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("GesterDetector")),
      body: SafeArea(
          child: Container(
              child: Builder(
        builder: (context) => ListView(
          padding: EdgeInsets.all(3.0),
          children: [
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('Clickable Text',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que01Gester()));
                  }),
            ),
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('Toggle action on Text',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que02Gester()));
                  }),
            ),
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('on Click Change Opacity of Container',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que03Gester()));
                  }),
            ),
          ],
        ),
      ))),
      floatingActionButton: WidgetFab(),
    );
  }
}

class Que01Gester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01Gester11(),
      sourceFilePath: 'lib/Others/GesterDetector/Que01ClickonText.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Others/GesterDetector/Que01ClickonText.dart',
    );
  }
}

class Que02Gester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que02Gester11(),
      sourceFilePath: 'lib/Others/GesterDetector/Que02ClickonTextToggle.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Others/GesterDetector/Que02ClickonTextToggle.dart',
    );
  }
}

class Que03Gester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que03Gester11(),
      sourceFilePath:
          'lib/Others/GesterDetector/Que03ContainerOpacityGesterDetector.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Others/GesterDetector/Que03ContainerOpacityGesterDetector.dart',
    );
  }
}
