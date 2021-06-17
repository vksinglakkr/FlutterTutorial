// lib/Container\Que26dart_forLoop.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que2611 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que26.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("for..loop")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: ListView(
        children: [
          for (var i = 1; i < 50; i = i + 8)
            Container(
                child: SizedBox(
                    width: i * 3.0,
                    height: i * 4.0,
                    child: Text(
                      "NIC Kurukshetra",
                      style: TextStyle(fontSize: 20.0),
                    ))),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
