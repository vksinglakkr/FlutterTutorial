// lib\Container\Que25ContainerFlutterLogo.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que2511 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que25.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Flutter Logo")),
  
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
                  child: FlutterLogo(
                    size: 50,
                  ),
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
