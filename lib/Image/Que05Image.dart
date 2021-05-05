import 'package:flutter/material.dart';

class Que05Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image/Boxfit',
      home: Scaffold(
        appBar: AppBar(
          title: Text('fit: BoxFit.cover'),
        ),
        body: Column(
          children: [
            Image.network(
              "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
              height: 300, width: 300,
              fit: BoxFit.cover,
              //fit: BoxFit.contain,
              //fit: BoxFit.fill,
              //fit: BoxFit.fitHeight,
              //fit: BoxFit.fitWidth,
              //fit: BoxFit.scaleDown,
              //fit: BoxFit.none,
            ),
            SizedBox(height: 5.0),
            Image(
              image: AssetImage('assets/images/Que05Image.jpg'),
              fit: BoxFit.fill,
            ),
            Text("Image/Que05Image.dart")
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
