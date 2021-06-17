// lib/Box\Box_FractionallySizedBox\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Fraction11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Box/Box_FractionallySizedBox/Que01.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("FractionallySizedBox Demo")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            color: Colors.green,
            child: FractionallySizedBox(
              heightFactor: 0.32,
              child: ElevatedButton(
                  onPressed: () {},
//                    color: Colors.black,
//                    textColor: Colors.white,
                  child: Text('heightFactor')),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.green,
            child: FractionallySizedBox(
              widthFactor: 0.50,
              child: ElevatedButton(
                  onPressed: () {},
//                    color: Colors.black,
//                    textColor: Colors.white,
                  child: Text('widthFactor')),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.green,
            child: FractionallySizedBox(
              widthFactor: 0.50,
              heightFactor: 0.32,
              child: ElevatedButton(
                  onPressed: () {},
//                    color: Colors.black,
//                    textColor: Colors.white,
                  child: Text('Both')),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.green,
            child: FractionallySizedBox(
              widthFactor: 0.50,
              heightFactor: 0.32,
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                  onPressed: () {},
//                    color: Colors.black,
//                    textColor: Colors.white,
                  child: Text('Alignment')),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
