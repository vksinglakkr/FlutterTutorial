// lib\ListView\Que32ListViewHorizontal.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que3211 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que32.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.builder without List declaration",
            style: TextStyle(fontSize: 16)),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, pos) {
              return Container(
                width: 80,
                color: Colors.pink,
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.purple.shade300,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
