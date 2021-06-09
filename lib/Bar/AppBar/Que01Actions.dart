// lib\Bar\AppBar\Que01Actions.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que01Actions11 extends StatelessWidget {
  launchURL() {
    launch('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Iconic Buttons \nin AppBar',
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            color: Colors.black,
            onPressed: launchURL,
          ),
          IconButton(
              icon: const Icon(Icons.image),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAppImage()),
                );
              }),
          IconButton(
              icon: const Icon(Icons.play_arrow),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAppVideo()),
                );
              }),
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

class MyAppVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: 'IYDVcriKjsw',
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

class MyAppImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
          child: Image.asset("assets/help/Box/Box_RotatedBox/Que01.png")),
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



//Note https://www.youtube.com/watch?v=BFE6_UglLfQ