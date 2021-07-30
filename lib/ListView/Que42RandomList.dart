// lib/ListView\Que42RandomList.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

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
  ...course1 // Joining of Two List using Spread Operator
];

var element = (course2..shuffle());

class Que4211 extends StatefulWidget {
  @override
  _Que4211State createState() => _Que4211State();
}

class _Que4211State extends State<Que4211> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Random List Generation")),
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
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    element = (course2..shuffle());
                  });
                },
                child: Text("Click To Shuffle"))
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
