//    lib\AlertDialog\Que01Basic.dart
import 'package:flutter/material.dart';
import '../Image/BottomNavigationBar.dart';

class Que01Alert11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/AlertDialog/Que01.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Code \nAlert Dialog Box'),
      ),
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
        title: new Text("Alert!!"),
        content: new Text("You are awesome!"),
        actions: [
          TextButton(
            child: new Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
