import 'package:flutter/material.dart';

class Que07Clip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClipRRect',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ClipRRect/BorderRadius/BoxFit'),
        ),
        body: Column(
          children: [
            ClipRRect(
              //borderRadius: BorderRadius.circular(120.0),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(120.0),
                topRight: Radius.circular(120.0),
                bottomRight: Radius.circular(120.0),
                bottomLeft: Radius.circular(220.0),
              ),
              child: Image.network(
                "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
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
