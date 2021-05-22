import 'package:flutter/material.dart';

List<String> course = [
  "c",
  "c++",
  "java",
  "kotlin",
  "objective c",
  "swift",
  "php"
];

class Que33 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("itemBuilder: (_, index) i.e. without BuildContext",
              style: TextStyle(fontSize: 14)),
        ),
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
