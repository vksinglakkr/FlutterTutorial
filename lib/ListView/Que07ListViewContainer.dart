// lib\ListView\Que07ListViewContainer.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que0711 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que07.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container ListView'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 5),
              height: 50,
              color: Colors.purple[600],
              child: const Center(
                  child: Text('Item 1',
                      style: TextStyle(fontSize: 18, color: Colors.white)))),
          Container(
              margin: EdgeInsets.only(top: 5),
              height: 50,
              color: Colors.purple[500],
              child: const Center(
                  child: Text('Item 2',
                      style: TextStyle(fontSize: 18, color: Colors.white)))),
          Container(
              margin: EdgeInsets.only(top: 5),
              height: 50,
              color: Colors.purple[400],
              child: const Center(
                  child: Text('Item 3',
                      style: TextStyle(fontSize: 18, color: Colors.white)))),
          Container(
              margin: EdgeInsets.only(top: 5),
              height: 50,
              color: Colors.purple[300],
              child: const Center(
                  child: Text('Item 4',
                      style: TextStyle(fontSize: 18, color: Colors.white)))),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/ListView/Que07.png'),
            ),
          ),
          Center(child: Text("ListView/Que07ListViewContainer.dart"))
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
