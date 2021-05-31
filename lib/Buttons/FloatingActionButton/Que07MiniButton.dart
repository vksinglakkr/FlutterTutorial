import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que07Floating extends StatefulWidget {
  launchURL() {
    launch('');
  }

  @override
  _Que07FloatingState createState() => _Que07FloatingState();
}

class _Que07FloatingState extends State<Que07Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Mini Size"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
        mini: true,
      ),
    );
  }
}
