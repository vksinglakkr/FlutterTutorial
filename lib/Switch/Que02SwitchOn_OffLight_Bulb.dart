// lib/Switch\Que02SwitchOn_OffLight_Bulb.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0211 extends StatefulWidget {
  @override
  _Que02State createState() => _Que02State();
}

class _Que02State extends State<Que0211> {
  bool _toggle = false;

  final String image1 = "assets/help/Switch/Que02.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar(
                "Switch \n  How to change the Color of Icon at run time")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Center(
              child: Container(
                child: Icon(
                  Icons.lightbulb_outline,
                  color: _toggle ? Colors.orange : null,
                  size: 200,
                ),
              ),
            ),
            Center(
              child: Container(
                child: Switch(
                    value: _toggle,
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
