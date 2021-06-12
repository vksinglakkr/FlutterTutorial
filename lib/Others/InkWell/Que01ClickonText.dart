// lib\InkWell\Que01ClickonText.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01InkWell11 extends StatefulWidget {
  @override
  _Que01InkWell11State createState() => _Que01InkWell11State();
}

class _Que01InkWell11State extends State<Que01InkWell11> {
  String name = "NIC Kurukshetra";
  final String url1 = "";
  final String image1 = "assets/help/InkWell/Que01.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Click")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          InkWell(
            child: Center(
              child: Container(
                child: Text("$name"),
              ),
            ),
            onTap: () {
              setState(() {
                name = "Clicked on Text using InkWell";
              });
            },
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
