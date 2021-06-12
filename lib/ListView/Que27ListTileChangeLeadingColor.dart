// lib\ListView\Que27ListTileChangeLeadingColor.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que2711 extends StatefulWidget {
  @override
  _Que2711State createState() => _Que2711State();
}

class _Que2711State extends State<Que2711> {
  bool _toggle1 = false;
  bool _toggle2 = false;
  bool _toggle3 = false;
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que27.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Light on/Off'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: ListView(
        children: [
          ListTile(
            leading: _toggle1
                ? Icon(Icons.lightbulb, color: Colors.red)
                : Icon(Icons.lightbulb_outline),
            title: Text("ListTile 1"),
            trailing: Switch(
                value: _toggle1,
                onChanged: (bool value) {
                  setState(() => _toggle1 = value);
                }),
          ),
          ListTile(
            leading: _toggle2
                ? Icon(Icons.lightbulb, color: Colors.red)
                : Icon(Icons.lightbulb_outline),
            title: Text("ListTile 2"),
            trailing: Switch(
                value: _toggle2,
                onChanged: (bool value) {
                  setState(() => _toggle2 = value);
                }),
          ),
          ListTile(
            leading: _toggle3
                ? Icon(Icons.lightbulb, color: Colors.red)
                : Icon(Icons.lightbulb_outline),
            title: Text("ListTile 3"),
            trailing: Switch(
                value: _toggle3,
                onChanged: (bool value) {
                  setState(() => _toggle3 = value);
                }),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
