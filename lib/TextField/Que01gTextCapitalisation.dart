// lib/TextField\Que01ePrefix.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01g11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01g11> {
  final String url1 =
      "https://medium.com/flutter-community/a-deep-dive-into-flutter-textfields-f0e676aaab7a"; //final for textCapitalisation
  final String image1 = "";
  final String video1 = ""; //final TextField Que01b
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar(
                "Capitalisation of \nSentence, Characters, Words")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Capitalize only first cahracter of each sentence.'),
                  TextField(
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText:
                          "textCapitalization: TextCapitalization.sentences",
                      hintStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  Text('Capitalize all the characters.'),
                  TextField(
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText:
                          "textCapitalization: TextCapitalization.characters",
                      hintStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  Text('Capitalize first character of every word.'),
                  TextField(
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "textCapitalization: TextCapitalization.words",
                      hintStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  Text('Capitalize none of character'),
                  TextField(
                    textCapitalization: TextCapitalization.none,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "textCapitalization: TextCapitalization.none",
                      hintStyle: TextStyle(fontSize: 12),
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
