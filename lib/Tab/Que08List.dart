// lib\Tab\Que08List.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que0811 extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];
  final String url1 = "";
  final String image1 = "assets/help/Tab/Que08.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('List'),
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
