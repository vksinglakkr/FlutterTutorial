// lib\Bar\Snackbar\Que03Duration.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que03SnackBar11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que03SnackBar11> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
    try {
//      _scaffoldKey.currentState.showSnackBar(SnackBar(
//        content: Text(message),
//        duration: Duration(seconds: 2, milliseconds: 500),
//      ));
    } on Exception catch (e, s) {
      print(s);
    }
  }

  launchURL() {
    launch('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
              child: ElevatedButton(
//          textColor: Colors.white,
//          color: Colors.blue,
            child: Text('Show SnackBar'),
            onPressed: () {
              _showMessageInScaffold("Hello dear! I'm SnackBar.");
            },
          )),
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
      body: Container(child: Image.asset("assets/help/Bar/Snackbar/Que03.png")),
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
