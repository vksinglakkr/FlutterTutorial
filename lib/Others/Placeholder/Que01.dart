// lib/Placeholder\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0111 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Placeholder/Que01.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Placeholder")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Placeholder(
            color: Colors.blue,
            strokeWidth: 10.0,
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
