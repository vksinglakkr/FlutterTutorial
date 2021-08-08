// lib/Image\HomeScreen_Image.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Container/Que42_AnimatedCurves.dart';
import 'package:flutter_tutorial/Image/Que03aImage.dart';
import 'package:flutter_tutorial/Image/Que15.dart';
import 'package:flutter_tutorial/Image/Que16.dart';
import 'package:flutter_tutorial/Image/Que16acolorFilter.dart';
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
                ButtonsCode(
                    Que00Image11(),
                    "lib/Image/Que00Image.dart",
                    "Various ways for obtaining an Image?",
                    "assets/help/Image/1 (1).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que01Image11(),
                    "lib/Image/Que01Image.dart",
                    "Image(image: AssetImage()) \ni.e. file that is bundled and deployed in app",
                    "assets/help/Image/1 (2).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que02Image11(),
                    "lib/Image/Que02Image.dart",
                    "Image.asset() \ni.e. file that is bundled and deployed in app",
                    "assets/help/Image/1 (3).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que03Image11(),
                    "lib/Image/Que03Image.dart",
                    "Display Image from Internet \nImage.network()",
                    "assets/help/Image/1 (4).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que04Image11(),
                    "lib/Image/Que04Image.dart",
                    "Display Image from Internet \nImage(image:NetworkImage())",
                    "assets/help/Image/1 (5).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que05Image11(),
                    "lib/Image/Que05Image.dart",
                    "fit: BoxFit.cover",
                    "assets/help/Image/1 (6).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que03aImage11(),
                    "lib/Image/Que03aImage.dart",
                    "Loading Builder-ProgressIndicator",
                    "assets/help/Image/1 (7).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que06Image11(),
                    "lib/Image/Que06Image.dart",
                    "FadeInImage.assetNetwork()",
                    "assets/help/Image/1 (8).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que07Image11(),
                    "lib/Image/Que07Image.dart",
                    "repeat: ImageRepeat.repeat",
                    "assets/help/Image/1 (9).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que08Image11(),
                    "lib/Image/Que08Image.dart",
                    "final urlImage1 = ''",
                    "assets/help/Image/1 (10).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que19Deco(),
                    "lib/Text/Que19DecorationImageOvertext.dart",
                    "Text on Image?",
                    "assets/help/Image/1 (11).jpg",
                    "SubTitle"),
                ButtonsCode(Que09Image11(), "lib/Image/Que09Image.dart",
                    "CircleAvatar", "assets/help/Image/1 (12).jpg", "SubTitle"),
                ButtonsCode(
                    Que10Image11(),
                    "lib/Image/Que10Image.dart",
                    "Container(decoration..",
                    "assets/help/Image/1 (13).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que01Clip11(),
                    "lib/Image/Clipping/Que01Clip.dart",
                    "ClipRRect/BorderRadius",
                    "assets/help/Image/1 (14).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que01Clip11(),
                    "lib/Image/Clipping/Que01Clip.dart",
                    "ClipRRect/BorderRadius",
                    "assets/help/Image/1 (15).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que07Clip11(),
                    "lib/Image/Clipping/Que07Clip.dart",
                    "ClipRRect/BorderRadius/BoxFit",
                    "assets/help/Image/1 (16).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que04Clip11(),
                    "lib/Image/Clipping/Que04Clip.dart",
                    "ClipOval..ImageRepeat",
                    "assets/help/Image/1 (17).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que05Clip11(),
                    "lib/Image/Clipping/Que05Clip.dart",
                    "ClipOval/Align",
                    "assets/help/Image/1 (18).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que06Clip11(),
                    "lib/Image/Clipping/Que06Clip.dart",
                    "ClipOval/Circle Demo",
                    "assets/help/Image/1 (19).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que08Clip11(),
                    "lib/Image/Clipping/Que08Clip.dart",
                    "ClipPath Assignment1",
                    "assets/help/Image/1 (20).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que09Clip11(),
                    "lib/Image/Clipping/Que09Clip.dart",
                    "ClipPath Assignment2",
                    "assets/help/Image/1 (21).jpg",
                    "SubTitle"),
                ButtonsCode(
                    Que10Clip11(),
                    "lib/Image/Clipping/Que10Clip.dart",
                    "ClipPath Assignment3",
                    "assets/help/Image/1 (22).jpg",
                    "SubTitle"),
                ButtonsCode(
                    AnimatedCurves(),
                    "lib/Container/Que42_AnimatedCurves.dart",
                    "Animated Curves Demo",
                    "assets/help/Image/1 (21).jpg",
                    "SubTitle"),
                ButtonsCode(Que15Swiper(), "lib/Image/Que15.dart",
                    "Image Swiper", "assets/help/Image/1 (22).jpg", "SubTitle"),
                ButtonsCode(Que16(), "lib/Image/Que16.dart", "Image Swiper",
                    "assets/help/Image/1 (23).png", "SubTitle"),
                ButtonsCode(
                    Que16a(),
                    "lib/Image/Que16a.dart",
                    "Image ColorFilter",
                    "assets/help/Image/1 (24).png",
                    "SubTitle"),
              ],
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
