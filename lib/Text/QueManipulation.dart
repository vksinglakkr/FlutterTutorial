// lib\Text\QueManipulation.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

// ignore: must_be_immutable
class QueManipulation11 extends StatelessWidget {
  String str1 = "national informatics center, kurukshetra";
  final String url1 = "";
  final String image1 = "assets/help/Text/QueManipulation.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Text => Manipulation")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: ListView(children: [
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Text(
              "To convert the text to UPPERCASE we just need to add .toUpperCase()."
                  .toUpperCase(),
            ),
          ),
          Divider(color: Colors.black, thickness: 2, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Text(
              "To convert the text to lowercase we just need to add .toLowerCase()."
                  .toLowerCase(),
            ),
          ),
          Divider(color: Colors.black, thickness: 3, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Text(
                str1.split(" ").map((str1) => str1[0].toUpperCase()).join(" ")),
          ),
          Divider(color: Colors.black, thickness: 3, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Text(
                str1.split(" ").map((str1) => str1.toUpperCase()).join(" ")),
          ),
          Divider(color: Colors.black, thickness: 3, indent: 20, endIndent: 20),
          Container(
            margin: EdgeInsets.fromLTRB(10, 1, 10, 1),
            child: Text('${str1[0].toUpperCase()}${str1.substring(1)}'),
          ),
        ]),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
