//  \lib/Others/Future/HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/FlutterLogo/Que01.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("FlutterLogo")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que01(), "lib/Others/FlutterLogo/Que01.dart",
                  "Demo FlutterLogo", "assets/help/Que01.jpg", "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
