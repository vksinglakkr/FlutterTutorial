// lib\TextField\Que03CursorColor.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que0311 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que0311> {
  final String url1 = "https://www.youtube.com/watch?v=4h5q5jfkdYg";
  final String image1 = "assets/help/TextField/Que03.png";
  final String video1 = "9z_YNlRlWfA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cursor Color'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
              cursorColor: Colors.red,
            )
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
