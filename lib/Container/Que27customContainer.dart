// lib\Container\Que27customContainer.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que2711 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que27.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Container'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          customContainer(),
          customContainer(),
          customContainer(),
          customContainer(),
          customContainer(),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }

  Center customContainer() {
    return Center(
      child: Container(
        child: Text('Hello World'),
      ),
    );
  }
}

//Note1: Right Click on Center, choose Extract Method
//Note2: It will ask the name of the method.
//Note3: Here we have given the name customContainer
//Note4: It has generated customerContainer of type Center
