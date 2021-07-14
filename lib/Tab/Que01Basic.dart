// lib/Tab\Que01Basic.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0111 extends StatelessWidget {
  final String image1 = "assets/images/flutter-tabbar-diagram.jpg";
  final String video1 = "r1sQTA_zPog"; //Que01

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Tabs"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
                text: 'bike',
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: TabBarView(
          children: [
            Icon(
              Icons.directions_car,
              size: 100.0,
            ),
            Icon(
              Icons.directions_transit,
              size: 100,
            ),
            Icon(Icons.directions_bike, size: 100),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
