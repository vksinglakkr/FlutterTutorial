// lib\Image\HomeScreen_Image.dart
import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Image")),
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
                      child: Text('Various ways for obtaining an Image?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  WidgetCode(Que00Image11(),"lib/Image/Que00Image.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Image(image: AssetImage())',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  WidgetCode(Que01Image11(),"lib/Image/Que01Image.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Image.asset())',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  WidgetCode(Que02Image11(),"lib/Image/Que02Image.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Image.network()',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetCode(Que03Image11(),"lib/Image/Que03Image.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Image(image:NetworkImage())',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetCode(Que04Image11(),"lib/Image/Que04Image.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('fit: BoxFit.cover',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  WidgetCode(Que05Image11(),"lib/Image/Que05Image.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('FadeInImage.assetNetwork()',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  WidgetCode(Que06Image11(),"lib/Image/Que06Image.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('repeat: ImageRepeat.repeat',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  WidgetCode(Que07Image11(),"lib/Image/Que07Image.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('final urlImage1 = ""',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  WidgetCode(Que08Image11(),"lib/Image/Que08Image.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Text on Image?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetCode(Que19Deco(),"lib/Text/Que19DecorationImageOvertext.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('CircleAvatar',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetCode(Que09Image11(),"lib/Image/Que09Image.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Container(decoration..',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetCode(Que10Image11(),"lib/Image/Que10Image.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipRRect/BorderRadius',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetCode(Que01Clip11(),"lib/Image/Clipping/Que01Clip.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipRRect/BorderRadius/BoxFit',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetCode(Que07Clip11(),"lib/Image/Clipping/Que07Clip.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipOval..ImageRepeat',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetCode(Que04Clip11(),"lib/Image/Clipping/Que04Clip.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipOval/Align',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetCode(Que05Clip11(),"lib/Image/Clipping/Que05Clip.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('FadeInImage.assetNetwork()',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetCode(Que06Clip11(),"lib/Image/Clipping/Que06Clip.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipPath Assignment1',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetCode(Que08Clip11(),"lib/Image/Clipping/Que08Clip.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipPath Assignment2',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetCode(Que09Clip11(),"lib/Image/Clipping/Que09Clip.dart")));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
//                      color: Colors.pinkAccent,
                      child: Text('ClipPath Assignment3',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WidgetCode(Que10Clip11(),"lib/Image/Clipping/Que10Clip.dart")));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

