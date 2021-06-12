// lib\SetUpAPK\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que0211 extends StatelessWidget {
  final String url1 = "https://morioh.com/p/5615675eecdd";
  final String image1 = "assets/help/SetUpAPK/minSDKVersion.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting of minSDKVersion?'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          SizedBox(
            height: 60,
            child: Card(
              color: Colors.indigoAccent,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Center(
                child: Text('android -> app -> src -> build.gradle',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
