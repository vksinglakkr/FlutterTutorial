//lib\Box\Box_SizedBox\Que02ListView.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que02Sized11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que02Sized11> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Box/Box_SizedBox/Que02.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Size Box- ListView")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: Container(
              child: SizedBox(
                height: 160.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      color: Colors.red,
                      child: Center(
                        child: Text("Item 1"),
                      ),
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.blue,
                      child: Center(
                        child: Text("Item 2"),
                      ),
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.green,
                      child: Center(
                        child: Text("Item 3"),
                      ),
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.yellow,
                      child: Center(
                        child: Text("Item 4"),
                      ),
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.orange,
                      child: Center(
                        child: Text("Item 5"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
