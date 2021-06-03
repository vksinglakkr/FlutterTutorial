// lib\Text\Que01bStyle.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que01bStyle extends StatelessWidget {
  launchURL() {
    launch(
        'https://api.flutter.dev/flutter/material/SelectableText-class.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text => Style'),
      ),
      body: ListView(children: <Widget>[
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
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Container(
            padding: EdgeInsets.all(5),
            child: Text(
              'fontWeight: FontWeight.w900',
              style: TextStyle(fontWeight: FontWeight.w900),
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Container(
            padding: EdgeInsets.all(5),
            child: Text(
              'backgroundColor: Colors.red',
              style: TextStyle(backgroundColor: Colors.red),
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Container(
            padding: EdgeInsets.all(5),
            child: Text(
              'fontFamily: "Raleway"',
              style: TextStyle(fontFamily: "Raleway"),
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Text(
            "height:2.0=>(Line Spacing)Kurukshetra has been described in the first verse of Shrimad bhagvadgita,",
            style: TextStyle(
              height: 2.0, //You can set your custom height here
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Text(
            "letterSpacing:3.0=>Kurukshetra has been described in the first verse ",
            style: TextStyle(
              letterSpacing: 3, //You can set your custom height here
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Text(
            "wordSpacing: 5.0=>Kurukshetra has been described in the first verse ",
            style: TextStyle(
              wordSpacing: 5, //You can set your custom height here
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
      ]),
      floatingActionButton: FloatingActionButton(
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
  launchURL() {
    launch(
        'https://api.flutter.dev/flutter/material/SelectableText-class.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text => Style'),
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
        title: Text('Text => Style'),
      ),
      body: Container(child: Image.asset("assets/help/Text/Que01b.png")),
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
