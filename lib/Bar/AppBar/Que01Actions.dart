// lib/Bar\AppBar\Que01Actions.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que01Actions11 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Box/Box_RotatedBox/Que01.png";
  final String video1 = "";
  launchURL() {
    launch(
        'https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("Iconic Buttons \nin AppBar"),
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
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}

class MyAppVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("")),
      body: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: 'IYDVcriKjsw',
          flags: YoutubePlayerFlags(autoPlay: true, mute: false),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
