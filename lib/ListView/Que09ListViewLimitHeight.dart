// lib\ListView\Que09ListViewLimitHeight.dart
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que0911 extends StatelessWidget {
  launchURL() {
    launch('https://flutter.dev/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Limit Height - Demo'),
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
          Container(
            margin: EdgeInsets.all(8),
            height: 250,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  height: 98,
                  color: Colors.purple[600],
                  child: const Center(
                      child: Text(
                    'Item 1',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
                Container(
                  height: 98,
                  color: Colors.purple[500],
                  child: const Center(
                      child: Text(
                    'Item 2',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
                Container(
                  height: 98,
                  color: Colors.purple[400],
                  child: const Center(
                      child: Text(
                    'Item 3',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
                Container(
                  height: 98,
                  color: Colors.purple[300],
                  child: const Center(
                      child: Text(
                    'Item 4',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Image(
              image: AssetImage('assets/images/ListView/Que09.png'),
            ),
          ),
          Center(child: Text("ListView/Que09ListViewLimitHeight.dart"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.purple.shade300,
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
        backgroundColor: Colors.purple.shade300,
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
      body: Container(child: Image.asset("assets/help/ListView/Que09.png")),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
