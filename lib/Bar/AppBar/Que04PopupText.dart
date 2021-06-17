// lib/Bar\AppBar\Que04PopupText.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que04Popup11 extends StatefulWidget {
  @override
  _Que04Popup11State createState() => _Que04Popup11State();
}

class _Que04Popup11State extends State<Que04Popup11> {
  final String url1 = "";
  final String image1 = "assets/help/";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("3 Dot Popup Menu(Text)"),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext bc) => [
              PopupMenuItem(child: Text("New Chat"), value: "/newchat"),
              PopupMenuItem(
                  child: Text("New Group Chat"), value: "/new-group-chat"),
              PopupMenuItem(child: Text("Settings"), value: "/settings"),
            ],
            onSelected: (route) {
              print(route);
              // Note You must create respective pages for navigation
              Navigator.pushNamed(context, route);
            },
          ),
        ],
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
