import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que21 extends StatelessWidget {
  launchURL() {
    launch('https://flutter.dev/');
  }

  final _switch = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListTile - Properties'),
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
              title: Text('One Line ListTile'),
            ),
            ListTile(
                title: Text('One Line ListTile with leading Widget'),
                leading: Icon(Icons.contact_mail_rounded, color: Colors.red)),
            ListTile(
                title:
                    Text('One Line ListTile with Leading CircleAvatar Widget'),
                leading: CircleAvatar(backgroundColor: Colors.red)),
            ListTile(
                title: Text('One Line with trailing Widget'),
                trailing: Icon(Icons.more_vert, color: Colors.red)),
            ListTile(
                title: Text('One Line with leading and trailing Widget'),
                trailing: Icon(Icons.more_vert, color: Colors.red),
                leading: Icon(Icons.account_tree)),
            ListTile(
              title: Text('One Line Dense ListTile'),
              trailing: Icon(Icons.more_vert, color: Colors.red),
              leading: Icon(Icons.account_tree),
              dense: true,
            ),
            ListTile(
              title: Text('Two Lines ListTile with leading and trailing'),
              subtitle: Text('Second Line'),
              trailing: Icon(Icons.more_vert, color: Colors.red),
              leading: Icon(Icons.account_tree),
            ),
            ListTile(
              isThreeLine: true,
              title: Text('Three Lines ListTile with \nleading \nand trailing'),
              subtitle: Text('For Three Line you can write long Subtitle'),
              trailing: Icon(Icons.more_vert, color: Colors.red),
              leading: Icon(Icons.account_tree),
            ),
            ListTileTheme(
              dense: true,
              iconColor: Colors.green,
              textColor: Colors.green,
              style: ListTileStyle.drawer,
              //style: ListTileStyle.list,
              child: ListTile(
                title: Text('ListTileTheme'),
                trailing: Icon(Icons.more_vert, color: Colors.red),
                leading: Icon(Icons.account_tree),
              ),
            ),
            Card(
              color: Colors.black12,
              child: ListTile(
                title: Text('ListTile with Card'),
                subtitle: Text('Second Line'),
                trailing: Icon(Icons.more_vert, color: Colors.red),
                leading: Icon(Icons.account_tree),
              ),
            ),
            SwitchListTile(
              value: _switch,
              title: Text("Switch ListTile"),
              secondary: Icon(Icons.swap_vertical_circle),
              onChanged: (bool value) {},
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
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
