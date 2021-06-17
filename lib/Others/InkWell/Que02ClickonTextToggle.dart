// lib/InkWell\Que02ClickonTextToggle.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que02InkWell11 extends StatefulWidget {
  @override
  _Que02InkWell11State createState() => _Que02InkWell11State();
}

class _Que02InkWell11State extends State<Que02InkWell11> {
  String name1 = "NIC Kurukshetra";
  final String url1 = "";
  final String image1 = "assets/help/InkWell/Que02.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("InkWell\nToggle Text")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: InkWell(
            child: Center(
              child: Container(
                child: Text("$name1"),
              ),
            ),
            onTap: () {
              setState(() {
                if (name1 == "NIC Kurukshetra") {
                  name1 = "Clicked on Text using Inkwell";
                } else {
                  name1 = "NIC Kurukshetra";
                }
              });
            }),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
