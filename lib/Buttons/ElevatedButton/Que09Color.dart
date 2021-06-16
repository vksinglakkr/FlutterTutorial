// lib\Buttons\ElevatedButton\Que08PaddingOnly.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que09Elevated11 extends StatefulWidget {
  @override
  _Que09Elevated11State createState() => _Que09Elevated11State();
}

class _Que09Elevated11State extends State<Que09Elevated11> {
  final String url1 = "";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que09.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Elevated \nBackground Color")),
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
                  child: Text('Elevated Button - Default'),
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber)),
                  child: Text('Colored Elevated Button'),
                )),
          ])),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
