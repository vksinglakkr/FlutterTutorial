// lib/Switch\Que03SwitchActiveTrackColor.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0311 extends StatefulWidget {
  @override
  _Que0311State createState() => _Que0311State();
}

class _Que0311State extends State<Que0311> {
  bool _toggle = false;

  final String image1 = "assets/help/Switch/Que03.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Active TrackColor")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Center(
              child: Container(
                child: Switch(
                    value: _toggle,
                    activeTrackColor: Colors.amber,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.red,
                    activeThumbImage: AssetImage('/assets/VKSINGLA.jpg'),
                    onChanged: (bool value) {
                      setState(() => _toggle = value);
                    }),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
