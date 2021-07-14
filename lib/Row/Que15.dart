// /lib/Row/Que15.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String url1 =
        "https://itnext.io/flutter-responsive-apps-flexible-vs-expanded-ff8cc92b468f";

    return Scaffold(
      appBar: AppBar(
          title: WidgetAppBar("Flexible with Loose\Tight-. allot equal space")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            //flex:1
            child: Container(
                color: Colors.lightBlue,
                height: 600,
                width: double.infinity,
                child: Center(
                    child: Text(
                  '600.0',
                  style: TextStyle(fontSize: 40.0),
                ))),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
                color: Colors.blue,
                height: 600,
                width: double.infinity,
                child: Center(
                    child: Text(
                  '600.0',
                  style: TextStyle(fontSize: 40.0),
                ))),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
                color: Colors.green,
                height: 20.0,
                width: double.infinity,
                child: Center(
                    child: Text(
                  '20.0',
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
