// lib\General\Que01General_Base.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01General11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Material App Bar")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Text('Hello World'),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

//Note: What is the benefit of using Container. Background Color, shadow, padding, margin, decoration, transform, shape, Alignment, scale, gradient
