// lib\Text\Que03UnderLine.dart
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que03Text11 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que03Text11> {
  launchURL() {
    launch('https://flutter.dev/');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text => FontStyle Property'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView(
          children: [
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 60,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Text("text data",\nstyle:TextStyle(decoration: TextDecoration.underline,)',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Column(
              children: <Widget>[
                //default color
                SizedBox(height: 10),
                new Text(
                  'Normal Text.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'fontWeight: FontWeight.bold',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'fontStyle: FontStyle.italic',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'decoration: TextDecoration.underline',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'decoration: TextDecoration.lineThrough',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'decoration: TextDecoration.overline',
                  style: TextStyle(
                    decoration: TextDecoration.overline,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.dashed,',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.wavy,',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.wavy,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.orange.shade300,
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
        backgroundColor: Colors.orange.shade300,
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
      body: Container(child: Image.asset("assets/help/Text/Que03.png")),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange.shade300,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
