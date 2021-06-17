// lib/TextField\Que07onChanged.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que07onChanged11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que07onChanged11> {
  final String url1 = "";
  final String image1 = "";
  final String video1 = "";
  FocusNode nodeFirst = FocusNode();
  FocusNode nodeSecond = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Handle changes \nusing onChanged?")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
              focusNode: nodeFirst,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Father Name',
              ),
              focusNode: nodeSecond,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                FocusScope.of(context).requestFocus(nodeSecond);
              },
              child: Text("Focus on Second Text Field"),
            ),
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
