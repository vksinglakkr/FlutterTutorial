// lib/pages\HomeScreenSetUp.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/SetUpAPK/Que04.dart';
import 'package:flutter_tutorial/SetUpAPK/Que04BestChannels.dart';
import 'package:flutter_tutorial/SetUpAPK/Que05.dart';
import 'package:flutter_tutorial/SetUpAPK/Que06.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
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
            ButtonsCode(
                Que0111(), "lib/SetUpAPK/Que01.dart", "How to build APK?"),
            ButtonsCode(Que0211(), "lib/SetUpAPK/Que02.dart",
                "Upload APK on Play Store?"),
            ButtonsCode(Que0311(), "lib/SetUpAPK/Que03.dart",
                "How to generate API Pin?"),
            ButtonsCode(Que0411(), "lib/SetUpAPK/Que05.dart",
                "add plugin in build.gradle?"),
            ButtonsCode(Que0111(), "", "fix minSDKVersion?"),
            ButtonsCode(Que0111(), "", "How to change the project name.??"),
            ButtonsCode(Que0111(), "", "Best Channels"),
            ButtonsCode(Que04(), "lib/SetUpAPK/Que04.dart",
                "flutter internet permission"),
            ButtonsCode(
                Que05(), "lib/SetUpAPK/Que05.dart", "Some usefull Extensions"),
            ButtonsCode(
                Que06(), "lib/SetUpAPK/Que06.dart", "Some shortcut Keys"),
          ],
        ),
      ),
    );
  }
}
