import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que01strut extends StatelessWidget {
  launchURL() {
    launch('https://nicksnettravels.builttoroam.com/flutter-text-widget/');
  }

  launchURL1() {
    launch(
        'https://medium.com/@najeira/control-text-height-using-strutstyle-4b9b5151668b');
  }

  @override
  Widget build(BuildContext context) {
    String str1 =
        "Setting the strutStyle property gives you the ability to fine-tune the separation between rows of text. For example, if you have a number of Text widgets that have differing font style and sizes, you can specify the strutStyle to ensure the same spacing between each row.";
    return Scaffold(
      appBar: AppBar(
        title: Text('Text=>Properties=>strutStyle'),
      ),
      body: Center(
        child: Column(children: [
          //Setting the strutStyle property gives you the ability to fine-tune the
          //separation between rows of text. For example, if you have a number of
          //Text widgets that have differing font style and sizes, you can specify
          //the strutStyle to ensure the same spacing between each row.
          //https://nicksnettravels.builttoroam.com/flutter-text-widget/
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
                  icon: const Icon(Icons.info),
                  color: Colors.black,
                  onPressed: launchURL1,
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
          Text(str1,
              style: TextStyle(fontSize: 12),
              strutStyle: StrutStyle(fontSize: 13)),
          SizedBox(height: 5),
          Text(str1,
              style: TextStyle(fontSize: 14),
              strutStyle: StrutStyle(fontSize: 13)),
          SizedBox(height: 5),
          Text(str1,
              style: TextStyle(fontSize: 12),
              strutStyle: StrutStyle(fontSize: 13)),
          Divider(color: Colors.black, thickness: 5, indent: 20, endIndent: 20),
          const Text.rich(
            TextSpan(
              text: '---------         ---------\n',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto',
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '^^^M^^^\n',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Roboto',
                  ),
                ),
                TextSpan(
                  text: 'M------M\n',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
            strutStyle: StrutStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              height: 1,
              forceStrutHeight: true,
            ),
          ),
          Divider(color: Colors.black, thickness: 5, indent: 20, endIndent: 20),
          const Text.rich(
            TextSpan(
              text: '       he candle flickered\n',
              style: TextStyle(fontSize: 14, fontFamily: 'Serif'),
              children: <TextSpan>[
                TextSpan(
                  text: 'T',
                  style: TextStyle(fontSize: 37, fontFamily: 'Serif'),
                ),
                TextSpan(
                  text: 'in the moonlight as\n',
                  style: TextStyle(fontSize: 14, fontFamily: 'Serif'),
                ),
                TextSpan(
                  text: 'Dash the bird fluttered\n',
                  style: TextStyle(fontSize: 14, fontFamily: 'Serif'),
                ),
                TextSpan(
                  text: 'off into the distance.',
                  style: TextStyle(fontSize: 14, fontFamily: 'Serif'),
                ),
              ],
            ),
            strutStyle: StrutStyle(
              fontFamily: 'Serif',
              fontSize: 14,
              forceStrutHeight: true,
            ),
          ),
        ]),
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

class MyAppVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
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
        title: Text('Material App Bar'),
      ),
      body:
          Container(child: Image.asset("assets/help/Text/Que01strutStyle.png")),
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
