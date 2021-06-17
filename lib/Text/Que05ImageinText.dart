// lib/Text\Que05ImageinText.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que05Text11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que05Text11> {
  final String url1 = "";
  final String image1 = "assets/help/Text/Que05.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Flutter Tutorial")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: FloatingActionButton(
          onPressed: () => print('Clicked'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          child: Text('👻', style: TextStyle(fontSize: 28.0))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
