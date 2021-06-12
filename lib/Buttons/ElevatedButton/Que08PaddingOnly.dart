// lib\Buttons\ElevatedButton\Que08PaddingOnly.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que08Elevated11 extends StatefulWidget {
  @override
  _Que08Elevated11State createState() => _Que08Elevated11State();
}

class _Que08Elevated11State extends State<Que08Elevated11> {
  final String url1 = "";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que08.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elevated - Padding only'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
              child: Column(children: <Widget>[
            Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button - Default Padding'),
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button'),
//                  padding: EdgeInsets.only(left: 50, right: 50),
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button'),
//                  padding: EdgeInsets.only(top: 20),
                )),
          ])),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
