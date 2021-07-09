// /lib/Row/Que11.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que11 extends StatelessWidget {
  final String video1 = "bdp4822vKbg"; //Que11 Final
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
              "Point to Note: SingleChildScrollView & Expanded don't come together."),
          Spacer(flex: 1),
          Divider(height: 15, thickness: 5, color: Colors.green),
          Text(
              "Five Containers wrapped in Row, Row wrapped in SingleChildScrollView. Output: OK"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.lightBlue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Divider(height: 15, thickness: 5, color: Colors.green),
          Text(
              "Five Containers(all or some are wrapped in Expanded) wrapped in Row, Row wrapped in SingleChildScrollView. No Output"),
          Spacer(flex: 2),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.lightBlue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
