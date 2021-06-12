// lib\Assignments\Que03IncreaseFontSize.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que0311 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que0311> {
  double custFontSize = 20;

  void changeFontSize() async {
    setState(() {
      custFontSize += 2;
    });
  }

  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Assignments/Que03.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Increase FontSize'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
              child: Column(children: <Widget>[
            Text(
              'Welcome to Flutter Tutorial',
              style: TextStyle(fontSize: custFontSize),
            ),
            ElevatedButton(
              onPressed: () {
                changeFontSize();
              },
              child: Text('Change size'),
            ),
          ])),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
