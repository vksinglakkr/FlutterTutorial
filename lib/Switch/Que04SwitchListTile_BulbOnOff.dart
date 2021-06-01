// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//import './SecondScreen.dart';

class Que0411 extends StatefulWidget {
  @override
  _Que0411State createState() => _Que0411State();
}

class _Que0411State extends State<Que0411> {
  bool _toggle1 = false;
  bool _toggle2 = false;
  bool _toggle3 = false;
  launchURL() {
    launch('https://flutter.dev/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Light on/Off'),
      ),
      body: Column(
        children: [
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
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              child: Icon(
                Icons.lightbulb,
                color: _toggle1 ? Colors.orange : null,
                size: 100,
              ),
            ),
            Container(
              child: Icon(
                Icons.lightbulb,
                color: _toggle2 ? Colors.orange : null,
                size: 100,
              ),
            ),
            Container(
              child: Icon(
                Icons.lightbulb,
                color: _toggle3 ? Colors.orange : null,
                size: 100,
              ),
            ),
          ]),
          Container(
            height: 200,
            child: ListView(
              children: [
                SwitchListTile(
                    secondary: Icon(Icons.lightbulb),
                    title: Text("SwitchListTile 1"),
                    value: _toggle1,
                    onChanged: (bool value) {
                      setState(() => _toggle1 = value);
                    }),
                SwitchListTile(
                    secondary: Icon(Icons.lightbulb),
                    title: Text("SwitchListTile 2"),
                    value: _toggle2,
                    onChanged: (bool value) {
                      setState(() => _toggle2 = value);
                    }),
                SwitchListTile(
                    secondary: Icon(Icons.lightbulb),
                    title: Text("SwitchListTile 3"),
                    value: _toggle3,
                    onChanged: (bool value) {
                      setState(() => _toggle3 = value);
                    }),
              ],
            ),
          ),
        ],
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
        title: Text(''),
      ),
      body: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: 'ZSU3ZXOs6hc',
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
      body: Container(child: Image.asset("assets/help/Text/Que01.png")),
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
