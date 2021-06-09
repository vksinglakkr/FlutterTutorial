// lib\Bar\BottomNavigationBar\Que02CurvedBottomNavigationbar.dart
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que02Curved11 extends StatefulWidget {
  @override
  _Que02Curved11State createState() => _Que02Curved11State();
}

class _Que02Curved11State extends State<Que02Curved11> {
  int _selectedIndex = 0;
  launchURL() {
    launch('https://pub.dev/packages/curved_navigation_bar');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Curved Navigation Bar',
            style: TextStyle(fontSize: 16),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blueAccent,
          items: [
            Icon(Icons.info, size: 20, color: Colors.black),
            Icon(Icons.image, size: 20, color: Colors.black),
            Icon(Icons.play_arrow, size: 20, color: Colors.black),
          ],
          onTap: (index) {
            setState(
              () {
                _selectedIndex = index;
                if (_selectedIndex == 0) {
                  launch(
                      'https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html');
                } else if (_selectedIndex == 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAppImage()));
                } else if (_selectedIndex == 2) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAppVideo()));
                }
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple.shade300,
          tooltip: "Go Back",
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.first_page),
        ),
      ),
    );
  }
}

class MyAppImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(child: Image.asset("assets/help/Bar/AppBar/Que02.png")),
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

class MyAppVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curved Navigation Bar'),
      ),
      body: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: 'JhqxNk8ry3A',
          flags: YoutubePlayerFlags(autoPlay: true, mute: false),
        ),
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
