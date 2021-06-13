// lib\Container\Que29Fontsfamily.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
// fonts:
//     - family: Font1
//       fonts:
//         - asset: assets/font/font1.ttf
//     - family: Font2
//       fonts:
//         - asset: assets/font/font2.ttf

class Que2911 extends StatefulWidget {
  @override
  _Que2911State createState() => _Que2911State();
}

class _Que2911State extends State<Que2911> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que29.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Fonts Family")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
              child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Welcome to NIC, Kurukshetra',
                style: TextStyle(
                    fontFamily: "Font1",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Welcome to NIC, Kurukshetra',
                  style: TextStyle(
                      fontFamily: "Font2",
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
          ])),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
