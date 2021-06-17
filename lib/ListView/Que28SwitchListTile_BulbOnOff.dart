//  \lib/ListView\Que28SwitchListTile_BulbOnOff.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
//import './SecondScreen.dart';

class Que2811 extends StatefulWidget {
  @override
  _Que2811State createState() => _Que2811State();
}

class _Que2811State extends State<Que2811> {
  bool _toggle1 = false;
  bool _toggle2 = false;
  bool _toggle3 = false;
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que28.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Light on/Off")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                child: Icon(
                  Icons.lightbulb,
                  color: _toggle1 ? Colors.orange : null,
                  size: 100,
                ),
              ),
              Container(
                child: Icon(
                  Icons.lightbulb,
                  color: _toggle2 ? Colors.orange : null,
                  size: 100,
                ),
              ),
              Container(
                child: Icon(
                  Icons.lightbulb,
                  color: _toggle3 ? Colors.orange : null,
                  size: 100,
                ),
              ),
            ]),
            Container(
              height: 200,
              child: ListView(
                children: [
                  SwitchListTile(
                      secondary: Icon(Icons.lightbulb),
                      title: Text("SwitchListTile 1"),
                      value: _toggle1,
                      onChanged: (bool value) {
                        setState(() => _toggle1 = value);
                      }),
                  SwitchListTile(
                      secondary: Icon(Icons.lightbulb),
                      title: Text("SwitchListTile 2"),
                      value: _toggle2,
                      onChanged: (bool value) {
                        setState(() => _toggle2 = value);
                      }),
                  SwitchListTile(
                      secondary: Icon(Icons.lightbulb),
                      title: Text("SwitchListTile 3"),
                      value: _toggle3,
                      onChanged: (bool value) {
                        setState(() => _toggle3 = value);
                      }),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
