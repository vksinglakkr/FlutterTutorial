// lib/Properties\onChanged\Que02SwitchActiveThumbPage.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que02 extends StatefulWidget {
  @override
  _Que02State createState() => _Que02State();
}

class _Que02State extends State<Que02> {
  bool _toggle = false;
  final String url1 = "";
  final String image1 = "assets/help/Properties/onChanged/Que02.png";
  final String video1 = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Switch Active ThumbPage")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Center(
              child: Container(
                child: Switch(
                    value: _toggle,
                    activeThumbImage:
                        _toggle ? AssetImage("assets/images/kkr.png") : null,
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
