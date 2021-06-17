// lib/Box\Box_FittedBox\Que03textOverFlow.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03TextOverflow11 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Box/Box_RotatedBox/Que01.png";
  final String video1 = "BFE6_UglLfQ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Tackle \nText Overflow")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          SizedBox(height: 10),
          Text("Sample Widget to understand how the FittedBox works"),
          // FittedBox(child:
          SizedBox(height: 20),
          Container(
            color: Colors.black,
            child: Row(
              children: [
                Container(
                  child: Text(
                      "Flutter code sample for FittedBox\nIn this example, the text is overflowed. Which handled easily by using FittedBox.",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ],
            ),
          ),
          // ), //Fitted Box
          SizedBox(height: 20),
          Container(
            child: Text(
                "To solve this we can use Fitted Box, Expandable, SizedBox. To see the use of this, uncomment the lines."),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
