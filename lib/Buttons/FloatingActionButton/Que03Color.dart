import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que03Floating extends StatefulWidget {
  launchURL() {
    launch('');
  }

  @override
  _Que03FloatingState createState() => _Que03FloatingState();
}

class _Que03FloatingState extends State<Que03Floating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Color"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        backgroundColor: Colors.lightGreen,
        onPressed: () => setState(() {
          //do something
        }),
      ),
    );
  }
}
