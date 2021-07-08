// /lib/Row/Que10.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que10 extends StatelessWidget {
  final String url1 =
      "https://itnext.io/flutter-responsive-apps-flexible-vs-expanded-ff8cc92b468f";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              color: Colors.lightBlue,
              height: 400,
              width: double.infinity,
              child: Center(
                  child: Text(
                '400.0',
                style: TextStyle(fontSize: 40.0),
              ))),
          Expanded(
            child: Container(
                color: Colors.green,
                height: 80, // HEIGHT IGNORED BY EXPANDED
                width: double.infinity,
                child: Center(
                    child: Text(
                  'Expaned - Shorthand for Flexible with tight fit',
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
