// lib\Container\Que17padding.dart
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que1711 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que17.png";
  final String video1 = "JDDoN2THwug";

  final random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding '),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Container(
              color: Colors.red,
              //padding: EdgeInsets.all(20),
              //padding: EdgeInsets.zero,
              //padding: EdgeInsets.symmetric(horizontal: 30,),
              //padding: double.infinity,
              //padding: EdgeInsets.only(left: 20.0,bottom: 30.0,),
              //padding: EdgeInsets.fromLTRB(40.0,50.0),

              //Random Number
              // padding: EdgeInsets.all(random.nextInt(5).toDouble()),
              child: Text("NIC Kurukshetra", style: TextStyle(fontSize: 30.0)),
            ),
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
    );
  }
}

//Note: Also check Padding as Widgets

