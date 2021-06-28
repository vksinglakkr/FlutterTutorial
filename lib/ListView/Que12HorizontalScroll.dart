// lib/ListView\Que12HorizontalScroll.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1211 extends StatelessWidget {
  final String image1 = "assets/help/ListView/Que12.png";

  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 110.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 110.0,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 110.0,
                    color: Colors.green,
                  ),
                  Container(
                    width: 110.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 110.0,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Image(
                image: AssetImage('assets/images/ListView/Que12.png'),
              ),
            ),
            Center(child: Text("ListView/Que12HorizontalScroll.dart"))
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
