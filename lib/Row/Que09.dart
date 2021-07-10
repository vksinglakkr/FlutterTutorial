// /lib/Row/Que09.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que09 extends StatelessWidget {
  final String url1 =
      "https://itnext.io/flutter-responsive-apps-flexible-vs-expanded-ff8cc92b468f";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Flexible with Tight Fit")),
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
            fit: FlexFit.tight,
            child: Container(
                color: Colors.green,
                height: 150, // HEIGHT IGNORED BY FLEXIBLE WITH TIGHT FIT
                width: double.infinity,
                child: Center(
                    child: Text(
                  'Flexible.tight - height of container completely ignored by Flexible. Takes up remaining available space',
                  style: TextStyle(fontSize: 25.0),
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
