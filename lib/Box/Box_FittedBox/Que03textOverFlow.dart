// lib/Box\Box_FittedBox\Que03textOverFlow.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03TextOverflow11 extends StatelessWidget {
  final String image1 = "assets/help/Box/Box_RotatedBox/Que01.png";
  final String video1 = "BFE6_UglLfQ";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Tackle \nText Overflow")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Spacer(flex: 1),
            Row(
              children: [
                Flexible(
                  child: Text(
                      "Flutter code sample for Flexible\nIn this example, the text is overflowed. Which handled easily by using Flexible.",
                      style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            Spacer(flex: 1),
            Row(
              children: [
                SizedBox(
                  width: 350,
                  child: Text(
                      "Flutter code sample for SizedBox\nIn this example, the text is overflowed. Which handled easily by using SizedBox.",
                      style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            Spacer(flex: 1),
            Row(
              children: [
                Expanded(
                  child: Text(
                      "Flutter code sample for Expanded\nIn this example, the text is overflowed. Which handled easily by using Expanded.",
                      style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            Spacer(flex: 1),
            Row(
              children: [
                Expanded(
                  child: Text(
                      "Flutter code sample for Expanded\nIn this example, the text is overflowed. Which handled easily by using Expanded.",
                      style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            Spacer(flex: 1),
//      ),
            // //Fitted Box
            // Expanded(
            //   child: Container(
            //     color: Colors.black,
            //     child: Row(
            //       children: [
            //         Container(
            //           child: Text(
            //               "Flutter code sample for FittedBox\nIn this example, the text is overflowed. Which handled easily by using FittedBox.",
            //               style: TextStyle(color: Colors.white, fontSize: 20)),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Container(
            //   color: Colors.black,
            //   child: Row(
            //     children: [
            //       Container(
            //         child: Text(
            //             "Flutter code sample for FittedBox\nIn this example, the text is overflowed. Which handled easily by using FittedBox.",
            //             style: TextStyle(color: Colors.white, fontSize: 20)),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
//        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
