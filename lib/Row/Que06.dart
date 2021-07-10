// /lib/Row/Que06.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que06 extends StatelessWidget {
  final String video1 = "bNvtd_ozziI";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Unbounded (TextField)")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText:
                              "TextField in Row needs to be wrapped in Flexible",
                          helperText:
                              "TextField inside of Row causes layout exception: \nUnable to calculate size"))),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: TextField(
                      decoration:
                          InputDecoration(hintText: "wrapped in Expanded"))),
            ],
          ),
          Row(
            children: [
              SizedBox(
                  width: 300,
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: "wrapped in SizedBox",
                  ))),
            ],
          ),
          Row(
            children: [
              Container(
                  width: 300,
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: "wrapped in Container",
                  ))),
            ],
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
