// lib\Theme\HomeScreen.dart
import 'package:flutter/material.dart';
import 'Que01.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme'),
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
                  child: Text('Difference between Theme & ThemeWidget',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que01()));
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
      sourceFilePath: 'lib/Others/Theme/Que01.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Others/Theme/Que01.dart',
    );
  }
}
