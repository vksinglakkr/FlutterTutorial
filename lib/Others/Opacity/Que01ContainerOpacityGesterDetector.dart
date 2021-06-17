// lib/Opacity\Que01ContainerOpacityGesterDetector.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0111 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que0111> {
  final String url1 = "";
  final String image1 = "assets/help/Opacity/Que01.png";
  final String video1 = "";

  double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Opacity of Container")),
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
              setState(
                () {
                  _opacity = _opacity - .1;
                },
              );
            },
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
