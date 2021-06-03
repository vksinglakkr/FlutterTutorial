// lib\Buttons\FloatingActionButton\Que10SwitchIcon.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que10Floating11 extends StatefulWidget {
  launchURL() {
    launch('');
  }

  @override
  _Que10Floating11State createState() => _Que10Floating11State();
}

class _Que10Floating11State extends State<Que10Floating11> {
  Icon fab = Icon(
    Icons.refresh,
  );

  int fabIconNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Switch Icon"),
      ),
      floatingActionButton: FloatingActionButton(
        child: fab,
        onPressed: () => setState(() {
          if (fabIconNumber == 0) {
            fab = Icon(
              Icons.stop,
            );
            fabIconNumber = 1;
          } else {
            fab = Icon(Icons.refresh);
            fabIconNumber = 0;
          }
        }),
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
      body: Container(
          child: Image.asset(
              "assets/help/Buttons/FloatingActionButton/Que10.png")),
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
