// lib\Tab\Que04WithoutTabBarView.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que0411 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Tab/Que04.png";
  final String video1 = "";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          title: Text('Tabs Demo'),
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple.shade300,
          tooltip: "Go Back",
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.first_page),
        ),
      ),
    );
  }
}
