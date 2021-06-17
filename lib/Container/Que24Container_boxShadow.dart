// lib/Container\Que24Container_boxShadow.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que2411 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que24.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("boxShadow ")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(color: Colors.redAccent, boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 8,
                  spreadRadius: 20,
                  offset: Offset(0, 3),
                ),
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 18,
                  spreadRadius: 10,
                  offset: Offset(0, 3),
                ),
              ]),
              child: Center(child: Text('NIC Kurukshetra')),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
