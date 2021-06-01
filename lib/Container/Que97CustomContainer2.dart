import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que9711 extends StatefulWidget {
  @override
  _Que9711State createState() => _Que9711State();
}

class _Que9711State extends State<Que9711> {
  launchURL() {
    launch('https://flutter.dev/');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Container App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Container App Bar'),
        ),
        body: SingleChildScrollView(
          child: Column(
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
              CustomContainer(
                color1: Colors.deepOrange,
                color2: Colors.yellow,
                containerNumber: '1',
                containerHeight: 300.0,
              ),
              CustomContainer(
                color1: Colors.blue,
                color2: Colors.red,
                containerNumber: '2',
                containerHeight: 300.0,
              ),
            ],
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
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String containerNumber;
  final double containerHeight;
  CustomContainer(
      {this.color1, this.color2, this.containerHeight, this.containerNumber});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50.0),
      height: containerHeight,
      color: color1,
      child: Container(
        color: color2,
        child: Center(
          child: Text(
            "Container $containerNumber",
            style: TextStyle(fontSize: 20.0),
          ),
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
