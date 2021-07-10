// /lib/Row/Que08.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que08 extends StatelessWidget {
  final String url1 =
      "https://itnext.io/flutter-responsive-apps-flexible-vs-expanded-ff8cc92b468f";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: WidgetAppBar("Flexible with Loose Fit\nLess space required")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              color: Colors.lightBlue,
              height: 300,
              width: double.infinity,
              child: Center(
                  child: Text(
                '300.0',
                style: TextStyle(fontSize: 40.0),
              ))),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
                color: Colors.green,
                height: 100,
                width: double.infinity,
                child: Center(
                    child: Text(
                  'Flexible - only 100 occupied',
                  style: TextStyle(fontSize: 30.0),
                ))),
          ),
        ],
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
