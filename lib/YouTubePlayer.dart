import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class QueYouTube extends StatefulWidget {
  @override
  _QueYouTubeState createState() => _QueYouTubeState();
}

class _QueYouTubeState extends State<QueYouTube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text => SelectableText'),
      ),
      body: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: 'dFKhWe2bBkM',
          flags: YoutubePlayerFlags(
            autoPlay: true,
            mute: false,
          ),
        ),
      ),
    );
  }
}
