import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que0611 extends StatefulWidget {
  @override
  _Que0611State createState() => _Que0611State();
}

class _Que0611State extends State<Que0611> {
  launchURL() {
    launch('https://flutter.dev/');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
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
                            MaterialPageRoute(
                                builder: (context) => MyAppImage()),
                          );
                        }),
                    IconButton(
                        icon: const Icon(Icons.play_arrow),
                        color: Colors.black,
//                  onPressed: launchURL,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyAppVideo()),
                          );
                        }),
                  ],
                ),
              ),
              Center(
                  child: Column(children: <Widget>[
                Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevated Button - Default Padding'),
                    )),
                Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevated Button - Padding 25'),
//                  padding: EdgeInsets.all(25),
                    )),
                Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevated Button - Padding 50'),
//                  padding: EdgeInsets.all(50),
                    )),
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
        ));
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
