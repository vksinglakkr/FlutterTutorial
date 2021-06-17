// lib/Card\Que01CardContainer.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01Card11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'Simple Card ');
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Card/Que01.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar(widget.title)),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Card(
              child: Container(
                height: 100,
                width: 400,
                child: Text(
                  "Sample 1",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
            Card(
              child: Container(
                height: 100,
                width: 400,
                child: Text(
                  "Sample 1",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
