import 'package:flutter/material.dart';

class Que01Clip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClipRRect',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ClipRRect/BorderRadius'),
        ),
        body: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(350.0),
              //borderRadius: BorderRadius.all(Radius.circular(10.0)),
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(25.0),
              //     topRight: Radius.circular(25.0),
              //     bottomRight: Radius.circular(25.0),
              //     bottomLeft: Radius.circular(25.0)),
              // borderRadius: BorderRadius.horizontal(
              //   left: Radius.circular(1025.0),
              //   right: Radius.circular(1425.0)),
              //borderRadius: BorderRadius.vertical(top:Radius.circular(25.0),bottom:Radius.circular(25.0),),

              child: Image.network(
                "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
                height: 300,
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
