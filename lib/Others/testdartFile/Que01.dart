import 'package:flutter/material.dart';

class QueTestMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: Text('Preserve Scroll Position'),
            bottom: TabBar(tabs: [
              const Tab(icon: Icon(Icons.cloud), text: 'Tab1'),
              const Tab(icon: Icon(Icons.alarm), text: 'Tab2'),
            ])),
        body: TabBarView(
          children: [
            buildListPageOne(), //Widget1
            buildGridPageOne(), //Widget2
          ],
        ),
      ),
    );
  }
}

Widget buildListPageOne() => ListView.builder(
    key: PageStorageKey<String>('pageTwo'),
    itemCount: 40,
    itemBuilder: (context, index) => ListTile(
          title: Text('List item ${index + 1}', style: TextStyle(fontSize: 24)),
        ));

Widget buildGridPageOne() => GridView.builder(
    key: PageStorageKey<String>('pageOne'),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: 40,
    itemBuilder: (context, index) => GridTile(
          child: Text('Grid item ${index + 1}', style: TextStyle(fontSize: 24)),
        ));
