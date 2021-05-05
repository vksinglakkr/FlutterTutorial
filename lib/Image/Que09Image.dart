//CircleAvtar
import 'package:flutter/material.dart';

class Que09Image extends StatelessWidget {
  final urlImage1 = 'assets/images/Kurukshetra.jpg';
  final urlImage2 = 'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CircleAvatar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CircleAvatar(backgroundImage:)'),
        ),
        body: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(urlImage2),
              radius: 100,
            ),
            SizedBox(
              height: 100.0,
            ),
            Center(
              child: Image(
                image: AssetImage('assets/images/Que09Image.jpg'),
              ),
            ),
            Text("Image/Que09Image.dart")
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
