// lib\Theme\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0111 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Theme & Theme Widget")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                    'Theme Widget: Defines the colors and font styles for a particular part of application.'),
                Spacer(
                  flex: 2,
                ), //Gives twice the space between Middle and End than Begin and Middle.
                Text(
                    'Theme: to share color and font styles throughout the app.'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
