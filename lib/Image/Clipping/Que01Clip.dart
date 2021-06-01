import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que01Clip11 extends StatelessWidget {
  launchURL() {
    launch('https://flutter.dev/');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClipRRect',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ClipRRect/BorderRadius'),
        ),
        body: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(350.0),
              //borderRadius: BorderRadius.all(Radius.circular(10.0)),
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(25.0),
              //     topRight: Radius.circular(25.0),
              //     bottomRight: Radius.circular(25.0),
              //     bottomLeft: Radius.circular(25.0)),
              // borderRadius: BorderRadius.horizontal(
              //   left: Radius.circular(1025.0),
              //   right: Radius.circular(1425.0)),
              //borderRadius: BorderRadius.vertical(top:Radius.circular(25.0),bottom:Radius.circular(25.0),),

              child: Image.network(
                "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
                height: 300,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
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

class MyAppVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: 'ZSU3ZXOs6hc',
          flags: YoutubePlayerFlags(autoPlay: true, mute: false),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black45,
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
      body: Container(child: Image.asset("assets/help/Text/Que01.png")),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black45,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
