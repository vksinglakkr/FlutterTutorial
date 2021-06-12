// lib\Container\Que16a_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que16a11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que16a.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("")),
      appBar: AppBar(
        title: Text('Algnment'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              //alignment: Alignment.center,
              color: Colors.red,
              child: Text('NIC Kurukshetra', style: TextStyle(fontSize: 20.0)),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
