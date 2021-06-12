// lib\QueURL_Launcher.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAppURL extends StatelessWidget {
  final String url1 = "https://www.youtube.com/watch?v=ktTajqbhIcY";
  final String image1 = "assets/help/UrlLauncher.png";
  final String video1 = "";
  launchURL() {
    launch('https://www.youtube.com/watch?v=ktTajqbhIcY');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: launchURL,
              child: Text('Show Kurukshetra homepage'),
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
