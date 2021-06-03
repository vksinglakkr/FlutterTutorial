// lib\Icons\HomeScreen.dart
import 'package:flutter/material.dart';
import 'Que01ChangeIcon.dart';
import 'Que02ChangeColor.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
      ),
      body: SafeArea(
          child: Container(
              child: Builder(
        builder: (context) => ListView(
          padding: EdgeInsets.all(3.0),
          children: [
            Container(
              margin: EdgeInsets.all(2),
              height: 22,
              child: ElevatedButton(
                  child: Text('Padding'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que01()));
                  }),
            ),
            Container(
              margin: EdgeInsets.all(2),
              height: 22,
              child: ElevatedButton(
                  child: Text('PaddingLRTB'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que02()));
                  }),
            ),
          ],
        ),
      ))),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.black45,
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
      sourceFilePath: 'lib/Icons/Que01ChangeIcon.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Icons/Que01ChangeIcon.dart',
    );
  }
}

class Que02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0211(),
      sourceFilePath: 'lib/Icons/Que02ChangeIcon.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Icons/Que02ChangeIcon.dart',
    );
  }
}
