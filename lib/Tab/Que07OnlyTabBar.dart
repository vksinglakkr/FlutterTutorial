// lib\Tab\Que07OnlyTabBar.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que0711 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Tab/Que07.png";
  final String video1 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabs Demo'),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Icon(Icons.directions_transit),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
