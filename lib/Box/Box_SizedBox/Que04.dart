// lib/Box/Box_SizedBox/Que04.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que04 extends StatelessWidget {
  final String url1 = "";

  final String video1 = "aVZ5rsA4Yx8"; //mtechviral best for SizedBox
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("SizedBox.expand")),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: SizedBox.expand(
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "SizedBox.expand",
                    textAlign: TextAlign.center,
                  )),
            ),
          ),
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
