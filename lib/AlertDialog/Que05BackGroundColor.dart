//  \lib/AlertDialog\Que05BackGroundColor.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que05Alert11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/AlertDialog/Que05.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: WidgetAppBar("Changed Background\nAlert Dialog Box")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: Text('Alert Dialog'),
              onPressed: () {
                _showDialog(context);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.green,
        title: new Text(
          "Alert!!",
          style: TextStyle(color: Colors.white),
        ),
        content: new Text(
          "You are awesome!",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          new TextButton(
            //color: Colors.green[200],
            child: new Text(
              "OK",
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
