// lib\ListView\Que33WithoutContextBuilder.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

List<String> course = [
  "c",
  "c++",
  "java",
  "kotlin",
  "objective c",
  "swift",
  "php"
];

class Que3311 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que33.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("itemBuilder: (_, index) i.e. without BuildContext",
            style: TextStyle(fontSize: 14)),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: course.length,
              itemBuilder: (_, position) {
                String dataElement = course[position];
                return Padding(
                    padding: EdgeInsets.all(8.0), child: Text(dataElement));
              },
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Image(
              image: AssetImage('assets/images/ListView/Que33.png'),
            ),
          ),
          Center(child: Text("ListView/Que33WithoutContextBuilder.dart"))
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
