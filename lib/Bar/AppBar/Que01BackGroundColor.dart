// lib\Bar\AppBar\Que01BackGroundColor.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que01AppBar11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01AppBar11> {
  final String url1 = "";
  final String image1 = "assets/help/Bar/AppBar/Que01.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff885566),
        title: Text(
          'AppBar - BackGroundColor',
        ),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
