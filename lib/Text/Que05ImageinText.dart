import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que05Text11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que05Text11> {
    launchURL() {
    launch('https://flutter.dev/');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Flutter Tutorial - googleflutter.com"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => print('Clicked'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          child: Text('👻', style: TextStyle(fontSize: 28.0))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
