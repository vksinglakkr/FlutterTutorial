// lib/Switch\Que05SwitchActiveThumbPage.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0511 extends StatefulWidget {
  @override
  _Que0511State createState() => _Que0511State();
}

class _Que0511State extends State<Que0511> {
  bool _toggle = false;

  final String image1 = "assets/help/Switch/Que05.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Active ThumbPage")),
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
