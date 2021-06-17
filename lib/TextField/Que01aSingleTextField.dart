// lib/TextField\Que01SingleTextField.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01a11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01a11> {
  final String url1 = "";
  final String image1 = "assets/help/TextField/Que01.png";
  final String video1 = "DMkkF_lVnpo"; //final TextField Que01a
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("TextField & Properties(2)")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Input border (none)'),
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter user name",
                    ),
                  ),
                  Text('OutlineBorder & set Width of Border'),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 3, color: Colors.red)),
                      hintText: "Enter user name",
                    ),
                  ),
                  Text('change KeyBoard'),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter user name",
                    ),
                  ),
                  Text('max. length (5)'),
                  TextField(
                    maxLength: 5,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Enter user name",
                    ),
                  ),
                  Text('max. Lines (2) with keyboardType multiline'),
                  TextField(
                    maxLines: 2,
                    maxLength: 20,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: "Enter user name",
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
