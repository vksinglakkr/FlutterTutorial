// lib/Tab\Que03OnlyDefaultTabController.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0311 extends StatelessWidget {
  final String image1 = "assets/help/Tab/Que03.png";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Tab Only Default Tab Controller"),
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
