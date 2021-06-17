// lib/TextField\Que01SingleTextField.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01b11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01b11> {
  final String url1 = "";
  final String image1 = "assets/help/TextField/Que01.png";
  final String video1 = "DMkkF_lVnpo"; //final TextField Que01b
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("TextField & Properties(3)")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('prefix Icon'),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.access_alarm),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 3, color: Colors.red)),
                      hintText: "Enter user name",
                    ),
                  ),
                  Text('IconButton'),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search_off)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 3, color: Colors.red)),
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
