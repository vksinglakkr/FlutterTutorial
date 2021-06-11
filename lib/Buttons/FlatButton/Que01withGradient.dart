//   lib\Buttons\FlatButton\Que01withGradient.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que01Flat11 extends StatefulWidget {
  @override
  _Que01Flat11State createState() => _Que01Flat11State();
}

class _Que01Flat11State extends State<Que01Flat11> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Buttons/FlatButton/Que01.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              width: 100,
              height: 100,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                gradient: new RadialGradient(
                  colors: [Colors.blue, Colors.indigo],
                ),
              ),
              child: TextButton(
                child: new Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: 200,
              height: 50,
              decoration: new BoxDecoration(
                gradient: new RadialGradient(
                  radius: 2,
                  colors: [Colors.yellowAccent, Colors.orange],
                ),
              ),
              child: TextButton(
                child: new Text(
                  'Login',
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: 200,
              height: 50,
              decoration: new BoxDecoration(
                gradient: new RadialGradient(
                  radius: 3,
                  focalRadius: 5,
                  colors: [Colors.lightGreenAccent, Colors.orange],
                ),
              ),
              child: TextButton(
                child: new Text(
                  'Login',
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: 200,
              height: 50,
              decoration: new BoxDecoration(
                gradient: new RadialGradient(
                  radius: 2,
                  colors: [
                    Colors.black45,
                    Colors.blue,
                    Colors.blueGrey,
                    Colors.blue,
                    Colors.blueGrey
                  ],
                ),
              ),
              child: TextButton(
                child: new Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
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
