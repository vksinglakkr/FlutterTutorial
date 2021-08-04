// lib/Transform\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Transform/Que02aTransform_scale.dart';
import 'package:flutter_tutorial/Transform/Que03aTransform_skew.dart';
import 'package:flutter_tutorial/Transform/Que01aTransform_translate.dart';
import 'package:flutter_tutorial/Transform/Que04aTransform_rotate.dart';
import 'package:flutter_tutorial/Transform/Que05aTransform_3D.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Transform")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que01(),
                      "lib/Transform/Que01Transform_translate.dart",
                      "Transform.translate(offset:)",
                      "assets/help/Transform/1(1).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01a(),
                      "lib/Transform/Que07.dart",
                      "Transform.translate(TransformHitTests:)",
                      "assets/help/Transform/1 (2).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0211(),
                      "lib/Transform/Que02Transform_scale.dart",
                      "Transform.scale(angle:,alignment:,origin:)",
                      "assets/help/Transform/1 (3).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que02a(),
                      "lib/Transform/Que02aTransform_scale.dart",
                      "Transform.scale(TransformHitTests:)",
                      "assets/help/Transform/1 (4).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0311(),
                      "lib/Transform/Que03Transform_skew.dart",
                      "skew->Transform(Transform:,alignment:,origin:)",
                      "assets/help/Transform/1 (5).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03a(),
                      "lib/Transform/Que03Transform_skew.dart",
                      "skew->Transform.scale(TransformHitTests:)",
                      "assets/help/Transform/1 (6).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0411(),
                      "lib/Transform/Que04Transform_rotate.dart",
                      "Transform.rotate(angle:,origin:,alignment:)",
                      "assets/help/Transform/1 (7).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que04a(),
                      "lib/Transform/Que04aTransform_rotate.dart",
                      "Transform.rotate(TransformHitTests:)",
                      "assets/help/Transform/1 (8).jpeg",
                      "SubTitle"),
                  ButtonsCode(Que0511(), "lib/Transform/Que05Transform_3D.dart",
                      "3D", "assets/help/Transform/1 (9).jpeg", "SubTitle"),
                  ButtonsCode(
                      Que05a(),
                      "lib/Transform/Que05aTransform_3D.dart",
                      "3D(TransformHitTests:)",
                      "assets/help/Transform/1 (10).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0611(),
                      "lib/Transform/Que06AllwithSlider.dart",
                      "Assignment - All with Slider",
                      "assets/help/Transform/1 (11).jpeg",
                      "SubTitle"),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
