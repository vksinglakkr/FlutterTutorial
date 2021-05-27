import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAppURL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  launchURL() {
    launch('https://www.youtube.com/watch?v=ktTajqbhIcY');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: launchURL,
          child: Text('Show Kurukshetra homepage'),
        ),
      ),
    );
  }
}
