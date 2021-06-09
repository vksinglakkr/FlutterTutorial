// lib\Bar\HomeScreen_Snack.dart
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

import 'Que01Basic.dart';

class HomeButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Bar'),
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
                      child: Text('',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01ButtonBar()));
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

class Que01ButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01ButtonBar11(),
      sourceFilePath: 'lib/Bar/Snackbar/Que01Basic.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Bar/Snackbar/Que01Basic.dart',
    );
  }
}
