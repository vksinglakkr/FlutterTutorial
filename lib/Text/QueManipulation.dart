// lib\Text\QueManipulation.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: must_be_immutable
class QueManipulation11 extends StatelessWidget {
  String str1 = "national informatics center, kurukshetra";
  launchURL() {
    launch('https://nicksnettravels.builttoroam.com/flutter-text-widget/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text => Manipulation'),
      ),
      body: Center(
        child: ListView(children: [
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
          Row(
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
            ],
          ),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Text(
              "To convert the text to UPPERCASE we just need to add .toUpperCase()."
                  .toUpperCase(),
            ),
          ),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Text(
              "To convert the text to lowercase we just need to add .toLowerCase()."
                  .toLowerCase(),
            ),
          ),
          Divider(color: Colors.black, thickness: 3, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Text(
                str1.split(" ").map((str1) => str1[0].toUpperCase()).join(" ")),
          ),
          Divider(color: Colors.black, thickness: 3, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Text(
                str1.split(" ").map((str1) => str1.toUpperCase()).join(" ")),
          ),
          Divider(color: Colors.black, thickness: 3, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Text('${str1[0].toUpperCase()}${str1.substring(1)}'),
          ),
        ]),
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

class MyAppVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
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
        title: Text('Material App Bar'),
      ),
      body: Container(child: Image.asset("assets/help/Text/Que01overFlow.png")),
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
