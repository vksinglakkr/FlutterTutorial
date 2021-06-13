// lib\Container\Que14checkwidthheightwithcolumn.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1411 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que14.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Check width height with column")),
  
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: Text('NIC Kurukshetra', style: TextStyle(fontSize: 20.0)),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
