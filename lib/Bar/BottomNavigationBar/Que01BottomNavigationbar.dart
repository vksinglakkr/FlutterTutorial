// lib\Text\Que01SelectableText.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que01Bottom extends StatefulWidget {
  @override
  _Que01BottomState createState() => _Que01BottomState();
}

class _Que01BottomState extends State<Que01Bottom> {
  int _selectedIndex = 0;
  launchURL() {
    launch(
        'https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Bottom Navigation Bar',
            style: TextStyle(fontSize: 16),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //type: BottomNavigationBarType.shifting,
          iconSize: 50,
          selectedFontSize: 30,
          unselectedFontSize: 16,

          backgroundColor: Colors.brown,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Info',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.image),
              label: 'Image',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.play_arrow),
              label: 'Video',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
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
        title: Text(''),
      ),
      body: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: '',
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