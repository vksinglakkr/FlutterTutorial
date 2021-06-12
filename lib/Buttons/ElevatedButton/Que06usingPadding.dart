// lib\Buttons\ElevatedButton\Que06usingPadding.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que06Elevated11 extends StatefulWidget {
  @override
  _Que06ElevatedState createState() => _Que06ElevatedState();
}

class _Que06ElevatedState extends State<Que06Elevated11> {
  final String url1 = "";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que06.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Elevated - Padding")),
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
                  child: Text('Elevated Button - Padding 25'),
//                  padding: EdgeInsets.all(25),
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button - Padding 50'),
//                  padding: EdgeInsets.all(50),
                )),
          ])),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
