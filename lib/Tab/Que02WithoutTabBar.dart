// lib/Tab\Que02WithoutTabBar.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0211 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Tab/Que02.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Without TabBar"),
          // bottom: TabBar(
          //   tabs: [
          //     Tab(icon: Icon(Icons.directions_car)),
          //     Tab(icon: Icon(Icons.directions_transit)),
          //     Tab(icon: Icon(Icons.directions_bike)),
          //   ],
          // ),
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            TabBarView(
              children: [
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
