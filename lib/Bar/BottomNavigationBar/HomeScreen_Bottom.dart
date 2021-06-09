// lib\Bar\HomeScreen_Bottom.dart
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

import 'Que01BottomNavigationbar.dart';
import 'Que02CurvedBottomNavigationbar.dart';
import 'Que03CustomShaped.dart';
//import 'package:widget_with_codeview/widget_with_codeview.dart';

//import 'BottomNavigationBar/';

class HomeBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom \nNavigation Bar'),
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
                      child: Text('Bottom Navigation Bar',
                          style: TextStyle(fontSize: 12.0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01Bottom()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Curved Navigation Bar',
                          style: TextStyle(fontSize: 12.0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que02Curved()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Custom Shaped Navigation Bar',
                          style: TextStyle(fontSize: 12.0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que03Custom()));
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

class Que01Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01Bottom11(),
      sourceFilePath:
          'lib/Bar/BottomNavigationBar/Que01BottomNavigationbar.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Bar/BottomNavigationBar/Que01BottomNavigationbar.dart',
    );
  }
}

class Que02Curved extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que02Curved11(),
      sourceFilePath:
          'lib/Bar/BottomNavigationBar/Que02CurvedBottomNavigationbar.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Bar/BottomNavigationBar/Que02CurvedBottomNavigationbar.dart',
    );
  }
}
