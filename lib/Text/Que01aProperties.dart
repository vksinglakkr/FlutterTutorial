// lib\Text\Que01aProperties.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que01aText11 extends StatelessWidget {
  launchURL() {
    launch(
        'https://flutter.dev/?gclsrc=aw.ds&gclid=EAIaIQobChMI8t3I3Mvw8AIVQUwrCh3DUgfCEAAYASAAEgIlhvD_BwE');
  }

//final String '$$'; semanticsLabel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text => Properties'),
      ),
      body: ListView(children: <Widget>[
        Card(
          elevation: 5,
          color: Colors.black12,
          margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
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
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Text(
              'Normal Text',
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Text(
              'textAlign: TextAlign.center',
              textAlign: TextAlign.center,
              //center/end/justify/left/right/start
              //in right to left Start==Right, end==Left i.e. TextDirection.RTL
              //in Left to Right Start==Left, end==Right i.e. TextDirection.LTR
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Container(
            padding: EdgeInsets.all(5),
            child: Text(
              'textDirection: TextDirection.rtl',
              textDirection: TextDirection.rtl,
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Container(
            padding: EdgeInsets.all(5),
            child: Text(
              "textScaleFactor: 1.1 //if you wanted the text to be 110% of it’s normal size then you’d set your textScaleFactor to 1.5 .",
              textScaleFactor: 1.2,
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Container(
            padding: EdgeInsets.all(5),
            child: Text(
              "SoftWrap: It is used to determine whether or not to show all text widget content when there is not enough space available. If it is true, it will show all content. Otherwise, it will not show all content.",
              // softWrap: ,
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Container(
            padding: EdgeInsets.all(5),
            child: Text(
              "TextWidthBasis: It is used to control how the text width is defined.",
              // textWidthBasis: ,
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Container(
            padding: EdgeInsets.all(5),
            child: Text(
              "TextHeightBehavior: It is used to control how the paragraph appears between the first line and descent of the last line.",
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              //  textHeightBehavior: TextHeightBehavior(applyHeightToLastDescent: false),
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
      ]),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.black45,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}

class MyAppVideo extends StatelessWidget {
  launchURL() {
    launch(
        'https://api.flutter.dev/flutter/material/SelectableText-class.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
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
        title: Text('Material App Bar'),
      ),
      body: Container(child: Image.asset("assets/help/Text/Que01a.png")),
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
