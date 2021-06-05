// lib\Image\Clipping\Que07Clip.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que07Clip11 extends StatelessWidget {
  launchURL() {
    launch('https://flutter.dev/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect/BorderRadius/BoxFit'),
      ),
      body: Column(
        children: [
          ClipRRect(
            //borderRadius: BorderRadius.circular(120.0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(120.0),
              topRight: Radius.circular(120.0),
              bottomRight: Radius.circular(120.0),
              bottomLeft: Radius.circular(220.0),
            ),
            child: Image.network(
              "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.purple.shade300,
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

class MyAppImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body:
          Container(child: Image.asset("assets/help/Image/Clipping/Que07.png")),
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
