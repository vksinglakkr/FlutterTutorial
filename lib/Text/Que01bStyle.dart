// lib\Text\Que01bStyle.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que01bStyle extends StatelessWidget {
  final String url1 = "https://www.youtube.com/watch?v=4h5q5jfkdYg";
  final String image1 = "assets/help/Text/Que01b.png";
  final String video1 = "9z_YNlRlWfA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text => Style'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: ListView(children: <Widget>[
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Container(
            padding: EdgeInsets.all(5),
            child: Text(
              'fontWeight: FontWeight.w900',
              style: TextStyle(fontWeight: FontWeight.w900),
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Container(
            padding: EdgeInsets.all(5),
            child: Text(
              'backgroundColor: Colors.red',
              style: TextStyle(backgroundColor: Colors.red),
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Container(
            padding: EdgeInsets.all(5),
            child: Text(
              'fontFamily: "Raleway"',
              style: TextStyle(fontFamily: "Raleway"),
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Text(
            "height:2.0=>(Line Spacing)Kurukshetra has been described in the first verse of Shrimad bhagvadgita,",
            style: TextStyle(
              height: 2.0, //You can set your custom height here
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Text(
            "letterSpacing:3.0=>Kurukshetra has been described in the first verse ",
            style: TextStyle(
              letterSpacing: 3, //You can set your custom height here
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
        Text(
            "wordSpacing: 5.0=>Kurukshetra has been described in the first verse ",
            style: TextStyle(
              wordSpacing: 5, //You can set your custom height here
            )),
        Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
      ]),
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
