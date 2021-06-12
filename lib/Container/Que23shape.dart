// lib\Container\Que23shape.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que2311 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que23.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shape'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
              shape: BoxShape.circle,
              //shape: BoxShape.rectangle,
            ),
            child: Center(child: Text('NIC Kurukshetra')),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}


//Note1: We have to use Centre widget with Text, Otherwise text will display outside Shape
//Note2: Check with center and without center.
//
