// lib\pages\HomeScreenSetUp.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
import '../AlertDialog/HomeScreen_Alert.dart';
import 'Que01.dart';
import 'Que02.dart';
import 'Que03.dart';

class HomeSetUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Setup/APK/Shortcut Keys")),
        body: GridView.count(
          padding: EdgeInsets.all(6),
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 1.92,
          children: [
            ElevatedButton(
                child: Text('How to build APK?',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeSetUp01(),
                    ))),
            ElevatedButton(
                child: Text('Upload APK on Play Store?',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAlert(),
                    ))),
            ElevatedButton(
                child: Text('How to generate API Pin?',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAlert(),
                    ))),
            ElevatedButton(
                child: Text('add plugin in build.gradle?',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAlert(),
                    ))),
            ElevatedButton(
                child: Text('fix minSDKVersion?',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Que0211(),
                    ))),
            ElevatedButton(
                child: Text('How to change the project name.?',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Que0311(),
                    ))),
          ],
        ),
      ),
    );
  }
}

class HomeSetUp01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0111(),
      sourceFilePath: 'lib/SetUpAPK/Que01.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/SetUpAPK/Que01.dart',
    );
  }
}
