// lib/TextField\Que01SingleTextField.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que04Keyboard extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que04Keyboard> {
  final String url1 =
      "https://medium.com/flutter-community/a-deep-dive-into-flutter-textfields-f0e676aaab7a"; //final keyBoard

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("keyBoard")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('change KeyBoard type'),
                  Text(
                      'text, number, emailAddress, datetime, numberWithOptions, multiline'),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Hint text",
                    ),
                  ),
                  Text(
                      'change new line button to next, search, newLine, send, continue, done, emergencyCall, go, join, none, previous, route  etc.'),
                  TextField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      hintText: "textInputAction: TextInputAction.search",
                    ),
                  ),
                  Text('max. Lines (2) with keyboardType multiline'),
                  TextField(
                    maxLines: 2,
                    maxLength: 20,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: "Hint text",
                    ),
                  ),
                  Text('disable AutoCorrect'),
                  TextField(
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: "autocorrect: false",
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
