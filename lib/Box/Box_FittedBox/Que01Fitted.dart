// lib\Box\Box_RotatedBox\Que01.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que01Fitted11 extends StatelessWidget {
  launchURL() {
    launch('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitted Box=>Stretch Image'),
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
      body: Column(
        children: [
          Text(
              "Flutter code sample for FittedBox\nIn this example, the image is stretched to fill the entire [Container], which would\nnot happen normally without using FittedBox."),
          Container(
            height: 180,
            width: 250,
            color: Colors.red,
            child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          ),
          Container(
            height: 180,
            width: 250,
            color: Colors.red,
            child: FittedBox(
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              fit: BoxFit.fill,
            ),
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