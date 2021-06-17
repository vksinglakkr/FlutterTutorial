// lib/Row\Que03Simple.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0311 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que0311> {
  final String url1 = "";
  final String image1 = "assets/help/Row/Que03.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Icons adjustment in Row")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Icon(
                Icons.access_alarm,
                size: 60,
              ),
              Icon(
                Icons.account_circle,
                size: 60,
              ),
              Expanded(
                child: Icon(
                  Icons.save,
                  size: 60,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.volume_up,
                  size: 60,
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
