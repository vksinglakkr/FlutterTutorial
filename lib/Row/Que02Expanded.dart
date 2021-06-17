// lib/Row\Que02Expanded.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0211 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que0211> {
  final String url1 = "";
  final String image1 = "assets/help/Row/Que02.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Expanded")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Icon(
                  Icons.access_alarm,
                  size: 80,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.account_circle,
                  size: 80,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.save,
                  size: 80,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
