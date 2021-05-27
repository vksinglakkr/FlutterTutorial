import 'package:flutter/material.dart';

import '../Video_Player.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: VideoPlayerApp(),
      ),
    );
  }
}
