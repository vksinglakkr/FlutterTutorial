import 'package:flutter/material.dart';

class Que32 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView.builder without List declaration",
              style: TextStyle(fontSize: 16)),
        ),
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, pos) {
            return Container(
              width: 80,
              color: Colors.pink,
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            );
          },
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
