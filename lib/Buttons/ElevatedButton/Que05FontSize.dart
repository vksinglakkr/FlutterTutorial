// lib\Buttons\ElevatedButton\Que05FontSize.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que05Elevated11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que05Elevated11> {
  final String url1 = "";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que05.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Elevated - FontSize")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
              child: Column(children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: Text('Button - Default Text Size'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Button - Font Size 25',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Button - Font Size 30',
                style: TextStyle(fontSize: 30),
              ),
            )
          ])),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
