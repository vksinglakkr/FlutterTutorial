import 'package:flutter/material.dart';

//if number of class are more than 1 then we have two ways to declare List
//a) List may be declared outside class with/without mentioning final
//b) if we declare List inside class then we have to write final word.

//if we have only one class then we may either write final or not, no issue.

//---------------------------------------------------------------------------

// word List may also be omitted but then we have to write the word final
// word <String> may also be omitted if all the elements are string.

//List course = ["c", 1, "c++", "java", "kotlin", "objective c", "swift", "php"];
//final course = [2, 3, 4, 5, 6, 7, 1];
//course = [2, 3, 4, 5, 6, 7, 1];

// we have to write List before that which we will use for itemCount.

// best practice always write final then <String> or <int> then variable name
final List<String> course = <String>[
  "c",
  "c++",
  "java",
  "kotlin",
  "objective c",
  "swift",
  "php"
];

class Que00 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Issue of mentioning final or not"),
        ),
        body: Container(
            color: Colors.white10,
            padding: EdgeInsets.all(16.0),
            child: HomePage(course)),
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

class HomePage extends StatelessWidget {
  final List<String> course;

  HomePage(this.course);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: course.length,
      itemBuilder: (context, pos) {
        return Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                child: Text(
                  course[pos],
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
