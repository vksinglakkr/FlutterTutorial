// lib\Container\Que15Transform.dart
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que1511 extends StatelessWidget {
  final random = Random();
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que15.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform '),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 150,
              height: 50,
              color: Colors.blue,
              //transform: null,
              transform: Matrix4.rotationZ(0.05),
              //transform: Matrix4.identity(),
              //transform: Matrix4.identity()..rotateZ(pi / 2),

              //Random Number
              //transform: Matrix4.rotationZ(random.nextInt(100).toDouble()),

              child: Center(
                child:
                    Text("NIC Kurukshetra", style: TextStyle(fontSize: 20.0)),
              ),
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
