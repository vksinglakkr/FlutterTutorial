// lib\Box\Box_RotatedBox\Que01.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que03TextOverflow11 extends StatelessWidget {
  launchURL() {
    launch('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tackle \nText Overflow',
          style: TextStyle(fontSize: 16),
        ),
        actions: [
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
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          SizedBox(height: 10),
          Text("Sample Widget to understand how the FittedBox works"),
          // FittedBox(child:
          SizedBox(height: 20),
          Container(
            color: Colors.black,
            child: Row(
              children: [
                Container(
                  child: Text(
                      "Flutter code sample for FittedBox\nIn this example, the text is overflowed. Which handled easily by using FittedBox.",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ],
            ),
          ),
          // ), //Fitted Box
          SizedBox(height: 20),
          Container(
            child: Text(
                "To solve this we can use Fitted Box, Expandable, SizedBox. To see the use of this, uncomment the lines."),
          ),
        ],
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

class MyAppVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: 'IYDVcriKjsw',
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
      body: Container(
          child: Image.asset("assets/help/Box/Box_RotatedBox/Que01.png")),
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

//Note https://www.youtube.com/watch?v=BFE6_UglLfQ
