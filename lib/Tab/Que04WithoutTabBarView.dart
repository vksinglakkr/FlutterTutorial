// lib/Tab\Que04WithoutTabBarView.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0411 extends StatelessWidget {
  final String image1 = "assets/help/Tab/Que04.png";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Tabs Demo"),
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

        body:
            //TabBarView(
            //  children: [
            Column(
          children: [
            Icon(Icons.directions_car),
          ],
        ),
        //    Icon(Icons.directions_transit),
        //    Icon(Icons.directions_bike),
        //  ],
        //),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
