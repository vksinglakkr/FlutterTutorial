// lib\Container\Que01ContainerOpacityGesterDetector.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Container11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01Container11> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que01.png";
  final String video1 = "JDDoN2THwug";

  double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("")),
      appBar: AppBar(
        title: Text('OpacityGesterDetector'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: GestureDetector(
          child: Opacity(
            opacity: _opacity,
            child: Container(height: 100, width: 100, color: Colors.red),
          ),
          onTap: () {
            setState(() {
              _opacity = _opacity - .1;
            });
          }),
    );
  }
}
