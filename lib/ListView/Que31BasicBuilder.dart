import 'package:flutter/material.dart';

class Que31 extends StatelessWidget {
  final List<String> course = [
    "c",
    "c++",
    "java",
    "kotlin",
    "objective c",
    "swift",
    "php"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom ListView.builder"),
        ),
        body: Container(
            color: Colors.white10,
            padding: EdgeInsets.all(16.0),
            child: CustomListBuild(course)),
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

class CustomListBuild extends StatelessWidget {
  final List<String> course;

  CustomListBuild(this.course);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: course.length,
      itemBuilder: (context, index) {
        return Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                child: Text(
                  course[index],
                  style: TextStyle(
                    fontSize: 18.0,
                    height: 1.6,
                  ),
                ),
              ),
            ));
      },
    );
  }
}
