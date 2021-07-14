// lib/Tab\Que01Basic.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

TabController _tabController;

class Que01 extends StatefulWidget {
  @override
  _Que01State createState() => _Que01State();
}

class _Que01State extends State<Que01> with SingleTickerProviderStateMixin {
  //
  final String image1 = "assets/help/Tab/Que01.png";

  final String video1 = "4FnHxKE53NY";
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("Tabs\nController"),
        bottom: TabBar(
          controller: _tabController,
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
        controller: _tabController,
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
    );
  }
}
