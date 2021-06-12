// lib\Container\Que21ContainerStackPositioned.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que2111 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que21.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("")),
      appBar: AppBar(
        title: Text('Container, Stack, Positioned'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 100,
                right: 50,
                child: Container(
                  color: Colors.red,
                  width: 200.0,
                  height: 200.0,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
