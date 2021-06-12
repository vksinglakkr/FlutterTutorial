// lib\Container\Que30Border.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que3011 extends StatefulWidget {
  @override
  _Que3011State createState() => _Que3011State();
}

class _Que3011State extends State<Que3011> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que30.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("")),
      appBar: AppBar(
        title: Text('Border'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
              child: Column(children: <Widget>[
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Text(''),
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  border: Border.all(
                    color: Colors.red,
                    width: 5,
                  )),
            ),
          ])),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
