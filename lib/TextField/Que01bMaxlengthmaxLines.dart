// lib/TextField\Que01SingleTextField.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que01b11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01b11> {
  final String url1 =
      "https://medium.com/flutter-community/a-deep-dive-into-flutter-textfields-f0e676aaab7a"; //final Maxlength
  final String image1 = "";
  final String video1 = "DMkkF_lVnpo"; //final TextField Que01b
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Max. Length/Lines")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('max. length (5)'),
                  TextField(
                    maxLength: 5,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "maxLength: 5",
                    ),
                  ),
                  Text('max. Lines (2) with keyboardType multiline'),
                  TextField(
                    maxLines: 2,
                    maxLength: 20,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText:
                          "maxLines: 2, maxLength: 20, keyboardType: TextInputType.multiline",
                    ),
                  ),
                  Text('maxLines:5 minLines:3 with keyboardType multiline'),
                  TextField(
                    maxLines: 5,
                    minLines: 3,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText:
                          "maxLines: 5, minLines: 3, keyboardType: TextInputType.multiline",
                    ),
                  ),
                  Text(
                      'toolbar options such as cut, copy, paste, select all ..'),
                  TextField(
                    toolbarOptions: ToolbarOptions(
                        copy: true, cut: true, selectAll: true, paste: true),
                    maxLines: 5,
                    minLines: 3,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        hintText:
                            "toolbarOptions: ToolbarOptions(copy: true, cut: true)"),
                  ),
                  Text('strutStyle'),
                  TextField(
                    strutStyle: StrutStyle(fontSize: 24),
                    maxLines: 5,
                    minLines: 3,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        hintText: "strutStyle:StrutStyle(fontSize:16)"),
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
