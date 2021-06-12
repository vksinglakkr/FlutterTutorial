// lib\GesterDetector\Que03ContainerOpacityGesterDetector.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que03Gester11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que03Gester11> {
  double _opacity = 1.0;
  final String url1 = "";
  final String image1 = "assets/help/GesterDetector/Que03.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial - NIC, KKR'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          GestureDetector(
              child: Opacity(
                opacity: _opacity,
                child: Container(height: 100, width: 100, color: Colors.red),
              ),
              onTap: () {
                setState(() {
                  _opacity = _opacity - .1;
                });
              }),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
