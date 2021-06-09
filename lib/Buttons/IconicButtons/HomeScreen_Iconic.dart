// lib\Bar\HomeScreen_Bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que01Actions.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que02CenterText.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

import 'Que01IconicButtoninBody.dart';

class HomeIconic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Iconic \nButtons',
          style: TextStyle(fontSize: 16),
        ),
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
                      child: Text('Iconic Buttons in AppBar',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01Actions()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Iconic Buttons in Body',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01Iconic()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
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

class Que01Iconic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01Iconic11(),
      sourceFilePath: 'lib/Buttons/IconicButtons/Que01IconicButtoninBody.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Buttons/IconicButtons/Que01IconicButtoninBody.dart',
    );
  }
}

class Que02AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que02AppBar11(),
      sourceFilePath: 'lib/Bar/AppBar/Que02CenterText.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Bar/AppBar/Que02CenterText.dart',
    );
  }
}

class Que01Actions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01Actions11(),
      sourceFilePath: 'lib/Bar/AppBar/Que01Actions.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Bar/AppBar/Que01Actions.dart',
    );
  }
}
