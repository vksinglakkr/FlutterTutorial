import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// fonts:
//     - family: Font1
//       fonts:
//         - asset: assets/font/font1.ttf
//     - family: Font2
//       fonts:
//         - asset: assets/font/font2.ttf

class Que29 extends StatefulWidget {
  @override
  _Que29State createState() => _Que29State();
}

class _Que29State extends State<Que29> {
  launchURL() {
    launch('https://flutter.dev/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Container Fonts Family"),
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
              padding: EdgeInsets.all(20),
              child: Text(
                'Welcome to NIC, Kurukshetra',
                style: TextStyle(
                    fontFamily: "Font1",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Welcome to NIC, Kurukshetra',
                  style: TextStyle(
                      fontFamily: "Font2",
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
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
    );
  }
}
