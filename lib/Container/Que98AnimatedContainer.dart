// lib/Container\Que98AnimatedContainer.dart
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que9811 extends StatefulWidget {
  @override
  _Que9811State createState() => _Que9811State();
}

class _Que9811State extends State<Que9811> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que98.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Animated Container")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              child: Center(
                child: Text('Demo',
                    style: TextStyle(
                      fontSize: 15.0,
                    )),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final random = Random();
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                random.nextInt(256), 1);
            _borderRadius =
                BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
        tooltip: 'Play',
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
