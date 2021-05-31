import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Que05Clip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClipOval',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ClipOval/Align Demo'),
        ),
        body: Column(
          children: [
            ClipOval(
              child: Align(
                heightFactor: 0.7,
                widthFactor: 0.8,
                alignment: Alignment.topLeft,
                child: Image.network(
                  "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
                  height: 400,
                  width: 400,
                ),
              ),
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
