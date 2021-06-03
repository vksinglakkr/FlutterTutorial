import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que2711 extends StatefulWidget {
  @override
  _Que2711State createState() => _Que2711State();
}

class _Que2711State extends State<Que2711> {
  bool _toggle1 = false;
  bool _toggle2 = false;
  bool _toggle3 = false;
  launchURL() {
    launch('https://flutter.dev/');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Light on/Off'),
        ),
        body: ListView(
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
            ListTile(
              leading: _toggle1
                  ? Icon(Icons.lightbulb, color: Colors.red)
                  : Icon(Icons.lightbulb_outline),
              title: Text("ListTile 1"),
              trailing: Switch(
                  value: _toggle1,
                  onChanged: (bool value) {
                    setState(() => _toggle1 = value);
                  }),
            ),
            ListTile(
              leading: _toggle2
                  ? Icon(Icons.lightbulb, color: Colors.red)
                  : Icon(Icons.lightbulb_outline),
              title: Text("ListTile 2"),
              trailing: Switch(
                  value: _toggle2,
                  onChanged: (bool value) {
                    setState(() => _toggle2 = value);
                  }),
            ),
            ListTile(
              leading: _toggle3
                  ? Icon(Icons.lightbulb, color: Colors.red)
                  : Icon(Icons.lightbulb_outline),
              title: Text("ListTile 3"),
              trailing: Switch(
                  value: _toggle3,
                  onChanged: (bool value) {
                    setState(() => _toggle3 = value);
                  }),
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
      body: Container(child: Image.asset("assets/help/ListView/Que27.png")),
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
