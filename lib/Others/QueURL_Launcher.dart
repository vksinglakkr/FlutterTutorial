// lib/QueURL_Launcher.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAppURL extends StatelessWidget {
  final String url1 = "https://www.youtube.com/watch?v=ktTajqbhIcY";
  final String image1 = "assets/help/UrlLauncher.png";
  final String video1 = "";
  launchURL() {
    launch('https://www.youtube.com/watch?v=ktTajqbhIcY');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: launchURL,
                child: Text('Show Kurukshetra homepage'),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
