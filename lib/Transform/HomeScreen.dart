// lib\Transform\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01Transform_translate.dart';
import 'Que02Transform_scale.dart';
import 'Que03Transform_skew.dart';
import 'Que04Transform_rotate.dart';
import 'Que05Transform_3D.dart';
import 'Que06AllwithSlider.dart';

class HomeTransform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Transform")),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                ButtonsCode(Que0111(),
                    "lib/Transform/Que01Transform_translate.dart", "Translate"),
                ButtonsCode(Que0211(),
                    "lib/Transform/Que02Transform_scale.dart", "Scale"),
                ButtonsCode(Que0311(), "lib/Transform/Que03Transform_skew.dart",
                    "Skew"),
                ButtonsCode(Que0411(),
                    "lib/Transform/Que04Transform_rotate.dart", "Rotate"),
                ButtonsCode(
                    Que0511(), "lib/Transform/Que05Transform_3D.dart", "3D"),
                ButtonsCode(Que0611(), "lib/Transform/Que06AllwithSlider.dart",
                    "Assignment - All with Slider"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
