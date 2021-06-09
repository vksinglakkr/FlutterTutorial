// lib\Theme\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

import 'Que01.dart';
import 'Que02.dart';
import 'Que03.dart';

class HomeGeneral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General'),
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
                  child: Text('What the build method do?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que01()));
                  }),
            ),
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('BuildContext?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que02()));
                  }),
            ),
            Container(
              margin: EdgeInsets.all(2),
              height: 32,
              child: ElevatedButton(
                  child: Text('Builder Widget?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que03()));
                  }),
            ),
          ],
        ),
      ))),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.purple.shade300,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}

class Que01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0111(),
      sourceFilePath: 'lib/Others/General/Que01.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Others/General/Que01.dart',
    );
  }
}

class Que02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0211(),
      sourceFilePath: 'lib/Others/General/Que02.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Others/General/Que02.dart',
    );
  }
}

class Que03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0311(),
      sourceFilePath: 'lib/Others/General/Que03.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Others/General/Que02.dart',
    );
  }
}
