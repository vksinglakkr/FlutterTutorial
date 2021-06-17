// lib/Properties\onChanged\Que03SwitchActiveTrackColor.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03 extends StatefulWidget {
  @override
  _Que03State createState() => _Que03State();
}

class _Que03State extends State<Que03> {
  bool _toggle = false;
  final String url1 = "";
  final String image1 = "assets/help/Properties/onChanged/Que03.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("ActiveTrackColor")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Switch(
                  value: _toggle,
                  activeTrackColor: Colors.amber,
                  onChanged: (bool value) {
                    setState(() => _toggle = value);
                  }),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
