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

class Que41 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("('  ','  ','  ',...list1) spread operator",
              style: TextStyle(fontSize: 14)),
        ),
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
