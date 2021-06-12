// lib\Container\QueAssignmentHowtofix2containersatcorners.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class QueAssign411 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2 Containers at Corner Bar'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.red,
                child: Text('Hello World'),
              ),
              Expanded(child: Center()),
              Container(
                color: Colors.blue,
                child: Text('Hello World'),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
