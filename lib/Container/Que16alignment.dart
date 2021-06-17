// lib/Container\Que16alignment.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1611 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que16.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Align")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            color: Colors.red,
            child: Text('NIC Kurukshetra', style: TextStyle(fontSize: 20.0)),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}


//Note1: try to check the difference between Align widget and alignment.
//Note2: If we also specify width alongwith alignment. Ans we get max height
//Note3: if we specify alignment we get maswidth, maxheight
//
