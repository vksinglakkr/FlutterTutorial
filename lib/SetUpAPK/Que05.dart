// lib/SetUpAPK\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Some best Extensions..")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Card(
              color: Colors.deepPurple,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Center(
                child: Text('Fast Dart. cls for class, tc for try catch ....',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),
            Card(
              color: Colors.deepPurple,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Center(
                child: Text('Error lens ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
