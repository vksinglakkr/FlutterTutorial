// lib/Image\HomeScreen_Image.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/Que03aImage.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:flutter_tutorial/Text/Que19DecorationImageOvertext.dart';

import 'Que00Image.dart';
import 'Que01Image.dart';
import 'Que02Image.dart';
import 'Que03Image.dart';
import 'Que04Image.dart';
import 'Que05Image.dart';
import 'Que06Image.dart';
import 'Que07Image.dart';
import 'Que08Image.dart';
import 'Que09Image.dart';
import 'Que10Image.dart';
import 'Clipping/Que01Clip.dart';
import 'Clipping/Que04Clip.dart';

import 'Clipping/Que05Clip.dart';
import 'Clipping/Que06Clip.dart';
import 'Clipping/Que07Clip.dart';
import 'Clipping/Que08Clip.dart';
import 'Clipping/Que09Clip.dart';
import 'Clipping/Que10Clip.dart';

//String s1 = "lib/Image/Que03Image.dart";

class HomeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Image")),
        body: SafeArea(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                ButtonsCode(Que00Image11(), "lib/Image/Que00Image.dart",
                    "Various ways for obtaining an Image?"),
                ButtonsCode(Que01Image11(), "lib/Image/Que01Image.dart",
                    "Image(image: AssetImage()) \ni.e. file that is bundled and deployed in app"),
                ButtonsCode(Que02Image11(), "lib/Image/Que02Image.dart",
                    "Image.asset() \ni.e. file that is bundled and deployed in app"),
                ButtonsCode(Que03Image11(), "lib/Image/Que03Image.dart",
                    "Image.network()"),
                ButtonsCode(Que04Image11(), "lib/Image/Que04Image.dart",
                    "Image(image:NetworkImage())"),
                ButtonsCode(Que05Image11(), "lib/Image/Que05Image.dart",
                    "fit: BoxFit.cover"),
                ButtonsCode(Que03aImage11(), "lib/Image/Que03aImage.dart",
                    "Loading Builder-ProgressIndicator"),
                ButtonsCode(Que06Image11(), "lib/Image/Que06Image.dart",
                    "FadeInImage.assetNetwork()"),
                ButtonsCode(Que07Image11(), "lib/Image/Que07Image.dart",
                    "repeat: ImageRepeat.repeat"),
                ButtonsCode(Que08Image11(), "lib/Image/Que08Image.dart",
                    "final urlImage1 = ''"),
                ButtonsCode(
                    Que19Deco(),
                    "lib/Text/Que19DecorationImageOvertext.dart",
                    "Text on Image?"),
                ButtonsCode(Que09Image11(), "lib/Image/Que09Image.dart",
                    "CircleAvatar"),
                ButtonsCode(Que10Image11(), "lib/Image/Que10Image.dart",
                    "Container(decoration.."),
                ButtonsCode(Que01Clip11(), "lib/Image/Clipping/Que01Clip.dart",
                    "ClipRRect/BorderRadius"),
                ButtonsCode(Que01Clip11(), "lib/Image/Clipping/Que01Clip.dart",
                    "ClipRRect/BorderRadius"),
                ButtonsCode(Que07Clip11(), "lib/Image/Clipping/Que07Clip.dart",
                    "ClipRRect/BorderRadius/BoxFit"),
                ButtonsCode(Que04Clip11(), "lib/Image/Clipping/Que04Clip.dart",
                    "ClipOval..ImageRepeat"),
                ButtonsCode(Que05Clip11(), "lib/Image/Clipping/Que05Clip.dart",
                    "ClipOval/Align"),
                ButtonsCode(Que06Clip11(), "lib/Image/Clipping/Que06Clip.dart",
                    "ClipOval/Circle Demo"),
                ButtonsCode(Que08Clip11(), "lib/Image/Clipping/Que08Clip.dart",
                    "ClipPath Assignment1"),
                ButtonsCode(Que09Clip11(), "lib/Image/Clipping/Que09Clip.dart",
                    "ClipPath Assignment2"),
                ButtonsCode(Que10Clip11(), "lib/Image/Clipping/Que10Clip.dart",
                    "ClipPath Assignment3"),
              ],
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
