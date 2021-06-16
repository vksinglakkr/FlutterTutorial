// lib\Buttons\ElevatedButton\Que08PaddingOnly.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que10Elevated11 extends StatefulWidget {
  @override
  _Que10Elevated11State createState() => _Que10Elevated11State();
}

class _Que10Elevated11State extends State<Que10Elevated11> {
  final String url1 = "";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que10.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Elevated \nColored Border")),
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
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(
                    width: 5,
                    color: Colors.red,
                  )),
                  child: Text('Elevated Button with Border'),
                )),
          ])),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
