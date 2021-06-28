// lib/TextField\Que01ePrefix.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01f11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01f11> {
  final String url1 =
      "https://medium.com/flutter-community/a-deep-dive-into-flutter-textfields-f0e676aaab7a"; //final for cursor

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(title: WidgetAppBar("cursorColor, \ncursorWidth, height")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Change the Color/Width of cursor'),
                  TextField(
                    cursorColor: Colors.amber,
                    cursorWidth: 8.0,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 3, color: Colors.green)),
                      hintText: "cursorColor: Colors.amber, cursorWidth: 8.0",
                    ),
                  ),
                  Text('Change the Height of cursor'),
                  TextField(
                    style: TextStyle(
                        height: 2.0), //increases the height of cursor,
                    cursorColor: Colors.amber,
                    cursorWidth: 8.0,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 3, color: Colors.green)),
                      hintText: "style: TextStyle(height: 2.0)",
                    ),
                  ),
                  Text('make a circular Cursor'),
                  TextField(
                    cursorColor: Colors.red,
                    cursorRadius: Radius.circular(16.0),
                    cursorWidth: 16.0,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText:
                            " cursorRadius: Radius.circular(16.0), cursorWidth: 16.0,",
                        hintStyle: TextStyle(fontSize: 12)),
                  ),
                  Text('make a elliptical Cursor'),
                  TextField(
                    cursorColor: Colors.green,
                    cursorRadius: Radius.elliptical(10, 20),
                    cursorWidth: 20.0,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText:
                            " cursorRadius: Radius.elliptical(10, 20), cursorWidth: 20.0,",
                        hintStyle: TextStyle(fontSize: 12)),
                  ),
                  Text('make cursor invisible'),
                  TextField(
                    showCursor: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 3, color: Colors.green)),
                      hintText: "showCursor: false",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
