// lib/Box\Box_RotatedBox\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Rotated11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Box/Box_RotatedBox/Que01.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Rotated Box")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          RotatedBox(
              quarterTurns: 3,
              child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'NIC Kurukshetra',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}



//Note https://www.youtube.com/watch?v=BFE6_UglLfQ