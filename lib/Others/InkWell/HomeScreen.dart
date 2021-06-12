// lib\InkWell\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';
import '../InkWell/Que02ClickonTextToggle.dart';
import 'Que01ClickonText.dart';
import 'Que02ClickonTextToggle.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeInkWell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell'),
      ),
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
                  child: Text('InkWell',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Que01InkWell()));
                  }),
            ),
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('InkWell',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Que02InkWell()));
                  }),
            ),
          ],
        ),
      ))),
      floatingActionButton: WidgetFab(),
    );
  }
}

class Que01InkWell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01InkWell11(),
      sourceFilePath: 'lib/Others/InkWell/Que01ClickonText.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Others/InkWell/Que01ClickonText.dart',
    );
  }
}

class Que02InkWell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que02InkWell11(),
      sourceFilePath: 'lib/InkWell/Que02ClickonTextToggle.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/InkWell/Que02ClickonTextToggle.dart',
    );
  }
}
