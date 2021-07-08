// lib/Box/Box_SizedBox/Que06.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que06 extends StatelessWidget {
  final String url1 = "";

  final String video1 = "aVZ5rsA4Yx8"; //mtechviral best for SizedBox
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Different Boxes")),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "SizedBox \nwidth:, height:",
                      )),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                        "SizedOverflowBox \nsize: \nSize(width, height)",
                        style: TextStyle(fontSize: 10))),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                        "SizedOverflowBox \nsize: \nMediaQuery.of(context).size / 10",
                        style: TextStyle(fontSize: 10))),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                    "OverflowBox \nmaxheight:, minHeight:, maxWidth:, minWidth:",
                    style: TextStyle(fontSize: 12))),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                    "FractionallySizedBox \nwidthFactor:, heightFactor:",
                    style: TextStyle(fontSize: 12))),
            SizedBox(height: 10),
          ],
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
