// lib\Box\HomeScreen_Decorated.dart
import 'package:flutter/material.dart';
import 'Que01Box_DecoratedBox.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeDecorated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decorated Box'),
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
                      child: Text('Decorated Box',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01Decorated()));
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

class Que01Decorated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01Decorated11(),
      sourceFilePath: 'lib/Box/Box_DecoratedBox/Que01Box_DecoratedBox.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Box/Box_DecoratedBox/Que01Box_DecoratedBox.dart',
    );
  }
}
