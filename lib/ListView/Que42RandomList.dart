// lib\ListView\Que42RandomList.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

final List<String> course1 = [
  "c",
  "c++",
  "java",
];
final List<String> course2 = [
  "kotlin",
  "objective c",
  "swift",
  "php",
  ...course1
];

var element = (course2..shuffle());

class Que4211 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que42.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random List Generation (Error Exist)",
            style: TextStyle(fontSize: 14)),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: element.length,
              itemBuilder: (_, position) {
                return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(element[position]));
              },
            ),
          ),
          SizedBox(height: 5),
          Center(child: Text("ListView/Que42RandomList.dart"))
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
