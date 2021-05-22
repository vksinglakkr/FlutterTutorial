import 'package:flutter/material.dart';

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

class Que42 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Random List Generation (Error Exist)",
              style: TextStyle(fontSize: 14)),
        ),
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
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.first_page),
        ),
      ),
    );
  }
}
