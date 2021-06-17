// lib/Container\Que19margin.dart
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1911 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que18.png";
  final String video1 = "JDDoN2THwug";
  final random = Random();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Margin")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(20),
              //margin: EdgeInsets.symmetric(horizontal: 30,),
              //margin: double.infinity,
              //margin: EdgeInsets.only(left: 20.0,bottom: 30.0,),
              //margin: EdgeInsets.fromLTRB(40.0,50.0),

              //Random Number
              // margin: EdgeInsets.all(random.nextInt(5).toDouble()),
              child: Text("NIC Kurukshetra", style: TextStyle(fontSize: 30.0)),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
