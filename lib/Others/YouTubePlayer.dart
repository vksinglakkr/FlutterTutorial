// lib\YouTubePlayer.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class QueYouTube extends StatefulWidget {
  @override
  _QueYouTubeState createState() => _QueYouTubeState();
}

class _QueYouTubeState extends State<QueYouTube> {
  final String url1 = "";
  final String image1 = "assets/help/YouTube.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text => SelectableText'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: 'dFKhWe2bBkM',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
