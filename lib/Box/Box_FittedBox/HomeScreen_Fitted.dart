// lib/Box\HomeScreen_Fitted.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

import 'Que01Fitted.dart';
import 'Que02ImageOverflow.dart';
import 'Que03textOverFlow.dart';

//import 'Box_FittedBox.dart';

class HomeFitted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Fitted Box")),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                ButtonsCode(
                    Que01Fitted11(),
                    "lib/Box/Box_FittedBox/Que01Fitted.dart",
                    "Image Stretching"),
                ButtonsCode(
                    Que02ImageOverflow11(),
                    "lib/Box/Box_FittedBox/Que02ImageOverflow.dart",
                    "Tackle Image Overflow"),
                ButtonsCode(
                    Que03TextOverflow11(),
                    "lib/Box/Box_FittedBox/Que03textOverFlow.dart",
                    "Tackle Text Overflow"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
