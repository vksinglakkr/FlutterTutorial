import 'package:flutter/material.dart';

class Que01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 01',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Question 01'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Image.asset("assets/images/Que01ListView.jpg"),
            SizedBox(height: 50.0),
            Text(
                "Que.: Will the code work or not? if we change ListView to Column, then?",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                )),
            SizedBox(height: 50.0),
            Text("ListView/Que01ListView.dart"),
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
