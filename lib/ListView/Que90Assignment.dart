// lib/ListView\Que90Assignment.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

void main() {
  runApp(MyDemo11());
}

class MyDemo11 extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que90.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar(""),
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            TabBarView(
              children: myTabs.map((Tab tab) {
                final String label = tab.text.toLowerCase();
                return Center(
                  child: Text(
                    'This is the $label tab',
                    style: const TextStyle(fontSize: 36),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
