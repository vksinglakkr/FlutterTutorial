// lib\Buttons\FloatingActionButton\Que10SwitchIcon.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que10Floating11 extends StatefulWidget {
  @override
  _Que10Floating11State createState() => _Que10Floating11State();
}

class _Que10Floating11State extends State<Que10Floating11> {
  Icon fab = Icon(
    Icons.refresh,
  );

  int fabIconNumber = 0;
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Buttons/FloatingActionButton/Que10.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Switch Icon"),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: FloatingActionButton(
        child: fab,
        onPressed: () => setState(() {
          if (fabIconNumber == 0) {
            fab = Icon(
              Icons.stop,
            );
            fabIconNumber = 1;
          } else {
            fab = Icon(Icons.refresh);
            fabIconNumber = 0;
          }
        }),
      ),
    );
  }
}
