// lib\Properties\onChanged\Que01Switch.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que01 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01> {
  bool isSwitched = false;
  final String url1 = "";
  final String image1 = "assets/help/Properties/onChanged/Que01.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() => isSwitched = value);
              },
              activeTrackColor: Colors.yellow,
              activeColor: Colors.orangeAccent,
            ),
          ),
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
