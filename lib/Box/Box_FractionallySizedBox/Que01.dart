// lib\Box\Box_FractionallySizedBox\Que01.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que01Fraction11 extends StatelessWidget {
  launchURL() {
    launch('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionallySizedBox Demo'),
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
            height: 130,
            width: double.infinity,
            color: Colors.green,
            child: FractionallySizedBox(
              heightFactor: 0.32,
              child: ElevatedButton(
                  onPressed: () {},
//                    color: Colors.black,
//                    textColor: Colors.white,
                  child: Text('heightFactor')),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.green,
            child: FractionallySizedBox(
              widthFactor: 0.50,
              child: ElevatedButton(
                  onPressed: () {},
//                    color: Colors.black,
//                    textColor: Colors.white,
                  child: Text('widthFactor')),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.green,
            child: FractionallySizedBox(
              widthFactor: 0.50,
              heightFactor: 0.32,
              child: ElevatedButton(
                  onPressed: () {},
//                    color: Colors.black,
//                    textColor: Colors.white,
                  child: Text('Both')),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.green,
            child: FractionallySizedBox(
              widthFactor: 0.50,
              heightFactor: 0.32,
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                  onPressed: () {},
//                    color: Colors.black,
//                    textColor: Colors.white,
                  child: Text('Alignment')),
            ),
          ),
        ],
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
      body: Container(
          child: Image.asset(
              "assets/help/Box/Box_FractionallySizedBox/Que01.png")),
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
