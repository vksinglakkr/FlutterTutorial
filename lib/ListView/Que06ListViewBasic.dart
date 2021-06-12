// lib\ListView\Que06ListViewBasic.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0611 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que06.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Container ListView")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              height: 50,
              color: Colors.amber[600],
              child: Center(child: Text('Entry A')),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: Center(child: Text('Entry B')),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: Center(child: Text('Entry C')),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Image(
                image: AssetImage('assets/images/ListView/Que06.jpg'),
              ),
            ),
            Center(child: Text("ListView/Que06ListViewBasic.dart"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
