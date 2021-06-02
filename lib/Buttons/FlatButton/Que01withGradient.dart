import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que01Flat11 extends StatefulWidget {
  @override
  _Que01Flat11State createState() => _Que01Flat11State();
}

class _Que01Flat11State extends State<Que01Flat11> {
  launchURL() {
    launch('');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial - NIC KKR'),
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
            Center(
                child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                width: 100,
                height: 100,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: new RadialGradient(
                    colors: [Colors.blue, Colors.indigo],
                  ),
                ),
                child: TextButton(
                  child: new Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 200,
                height: 50,
                decoration: new BoxDecoration(
                  gradient: new RadialGradient(
                    radius: 2,
                    colors: [Colors.yellowAccent, Colors.orange],
                  ),
                ),
                child: TextButton(
                  child: new Text(
                    'Login',
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 200,
                height: 50,
                decoration: new BoxDecoration(
                  gradient: new RadialGradient(
                    radius: 3,
                    focalRadius: 5,
                    colors: [Colors.lightGreenAccent, Colors.orange],
                  ),
                ),
                child: TextButton(
                  child: new Text(
                    'Login',
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 200,
                height: 50,
                decoration: new BoxDecoration(
                  gradient: new RadialGradient(
                    radius: 2,
                    colors: [
                      Colors.black45,
                      Colors.blue,
                      Colors.blueGrey,
                      Colors.blue,
                      Colors.blueGrey
                    ],
                  ),
                ),
                child: TextButton(
                  child: new Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ])),
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
      body: Container(child: Image.asset("")),
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
