// lib\ProgressIndicator_Loading\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0111 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/ProgressIndicator_Loading/Que01.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("CircularProgressIndicator Demo")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircularProgressIndicator(),
              CircularProgressIndicator(
                backgroundColor: Colors.red,
              ),
              CircularProgressIndicator(
                strokeWidth: 10.0,
              ),
            ]),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
