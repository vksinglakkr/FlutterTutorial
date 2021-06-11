// lib\Buttons\FloatingActionButton\Que03Color.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que03Floating11 extends StatefulWidget {
  @override
  _Que03Floating11State createState() => _Que03Floating11State();
}

class _Que03Floating11State extends State<Que03Floating11> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que01.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Color"),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Text(""),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        backgroundColor: Colors.lightGreen,
        onPressed: () => setState(() {
          //do something
        }),
      ),
    );
  }
}
