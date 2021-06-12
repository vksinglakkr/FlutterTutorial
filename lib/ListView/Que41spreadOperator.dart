// lib\ListView\Que41spreadOperator.dart
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

class Que4111 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que41.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("('  ','  ','  ',...list1) spread operator",
            style: TextStyle(fontSize: 14)),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: course2.length,
              itemBuilder: (_, position) {
                String dataElement = course2[position];
                return Padding(
                    padding: EdgeInsets.all(8.0), child: Text(dataElement));
              },
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Image(
              image: AssetImage('assets/images/ListView/Que41.png'),
            ),
          ),
          Center(child: Text("ListView/Que41spreadOperator.dart"))
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
