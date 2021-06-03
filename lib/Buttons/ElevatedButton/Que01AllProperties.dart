// lib\Buttons\ElevatedButton\Que01AllProperties.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que01Elevated11 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que01Elevated11> {
  launchURL() {
    launch('');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Tutorial'),
      ),
      body: new ListView(children: <Widget>[
        Card(
          elevation: 5,
          color: Colors.black38,
          margin: EdgeInsets.all(2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
//                  onPressed: launchURL,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyAppVideo()),
                    );
                  }),
            ],
          ),
        ),
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - Default'),
        ),
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - Text Color as Green'),
//          textColor: Colors.green,
        ),
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - More Elevation'),
//          elevation: 5,
        ),
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - Color as Deep Orange'),
//          color: Colors.deepOrange,
        ),
        new ElevatedButton(
          onPressed: () => {},
          child: new Text('Elevated Button - With Padding'),
//          padding: new EdgeInsets.all(30),
        ),
      ]),
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
          child: Image.asset("assets/help/Buttons/ElevatedButton/Que01.png")),
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
