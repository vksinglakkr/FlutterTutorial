// /lib/Row/Que07.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String url1 =
        "https://itnext.io/flutter-responsive-apps-flexible-vs-expanded-ff8cc92b468f";

    return Scaffold(
      appBar: AppBar(
          title:
              WidgetAppBar("Flexible with Loose Fit\nRequired space lesser")),
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
                height: 600.0,
                width: double.infinity,
                child: Center(
                    child: Text(
                  'Flexible - Remaining space taken',
                  style: TextStyle(fontSize: 40.0),
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
